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

  homepage_url = "https://www.h2odrinkingwater.com/"

  pages {
    source {
      branch = "gh-pages"
      path   = "/"
    }
    cname = "www.h2odrinkingwater.com"
  }
}

resource "github_branch" "main" {
  repository = github_repository.h2odrinkingwater.name
  branch     = "main"
}

resource "github_branch_default" "default"{
  repository = github_repository.h2odrinkingwater.name
  branch     = github_branch.main.branch
}
