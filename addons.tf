resource "heroku_addon" "staging" {
  app = heroku_app.staging.name
  plan = var.heroku_staging_database
}

resource "heroku_addon" "production" {
  app = heroku_app.production.name
  plan = var.heroku_production_database
}
