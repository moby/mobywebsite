require 'net/http'
require 'uri'
require 'json'

module Jekyll

  class FetchAndRender < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      @urlvar = markup.split(" ")[0].strip
      @template = markup.split(" ")[1].strip
      super
    end

    def render(context)
      
      url = context[@urlvar].strip
      if url =~ URI::regexp
        if (ENV.has_key?('GITHUB_CLIENT_ID') && ENV.has_key?('GITHUB_CLIENT_SECRET'))
          url = url + '?client_id=' + ENV['GITHUB_CLIENT_ID'] + '&client_secret=' + ENV['GITHUB_CLIENT_SECRET']
        end
        puts 'Fetching content of url: ' + url
        result = fetchContent(url)
      else
        raise 'Invalid URL passed to RemoteFileContent'
      end
      @content = JSON.parse( result ) if result
      if @content
        if @content.has_key?('message')
          puts 'content.message: ' + @content['message']
        end
        site = context.registers[:site]
        path = File.join('_includes', @template)

        partial = site.liquid_renderer.file(path).parse(File.read(path))

        context.stack do
          context['include'] = @content
          partial.render!(context)
        end
      else
        raise 'Something went wrong in RemoteFileContent'
      end
    end

    def fetchContent(url)
      Net::HTTP.get(URI.parse(URI.encode(url.strip)))
    end
  end
end

Liquid::Template.register_tag('fetch_and_render', Jekyll::FetchAndRender)
