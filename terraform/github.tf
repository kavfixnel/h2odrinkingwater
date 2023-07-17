variable "github_token" {
  type      = string
  sensitive = true
}

provider "github" {
  token = var.github_token
}

resource "github_repository" "h2odrinkingwater" {
  name       = "h2odrinkingwater"
  visibility = "public"

  pages {
    source {
      branch = "gh-pages"
      path   = "/"
    }
    cname = "www.h2odrinkingwater.com"
  }
}
