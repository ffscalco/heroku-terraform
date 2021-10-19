resource "heroku_app" "staging" {
  name = var.heroku_staging_app
  region = var.heroku_region

  config_vars = {
    RAILS_ENV = "staging",
    ORIGIN_ADDRESSES = var.heroku_staging_origin,

  }

  buildpacks = var.heroku_app_buildpacks
}

resource "heroku_app" "production" {
  name = var.heroku_production_app
  region = var.heroku_region

  config_vars = {
    RAILS_ENV = "production"
  }

  buildpacks = var.heroku_app_buildpacks
}
