workflow "Post Merge Message" {
  on = "pull_request"
  resolves = ["post message"]
}

action "post message" {
  uses = "vsoch/post-merge-message@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    POST_MESSAGE = ".github/badge.md"
  }
}
