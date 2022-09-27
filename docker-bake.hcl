variable "JEKYLL_ENV" {
  default = "development"
}
variable "BASEURL" {
  default = "/"
}
variable "SITE_DIR" {
  default = "_site"
}

target "_common" {
  args = {
    JEKYLL_ENV = JEKYLL_ENV
    BASEURL = BASEURL
  }
  no-cache-filter = ["generate"]
}

group "default" {
  targets = ["release"]
}

target "release" {
  inherits = ["_common"]
  target = "release"
  output = [SITE_DIR]
}

target "vendor" {
  target = "vendor"
  output = ["."]
}
