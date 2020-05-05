output "staging_git_url" {
  value = heroku_app.staging.git_url
}

output "production_git_url" {
  value = heroku_app.production.git_url
}
