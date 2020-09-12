resource "heroku_app" "staging" {
  name       = var.heroku_staging_app
  region     = var.heroku_region
  stack      = var.heroku_stack
  buildpacks = var.heroku_app_buildpacks

  config_vars = {
    APP_ENV = "staging",
    ASPNETCORE_ENVIRONMENT = "staging",
   "ConnectionStrings:Default" = "change_me",
   "JWT:Secret" = "4ad83c88c8676f939ac98756d8049822b417e4d20a89675b9ca4e4df76b022c69280646b0754e4e5cea066db427150fbf852814d0ae0dea7a2b486fff063bde2",
   "JWT:ValidAudience" = "http://localhost:4200",
   "JWT:ValidIssuer" = "http://localhost:61955",
   "AllowedAddresses:Default" = "*"
  }
}

resource "heroku_app" "production" {
  name       = var.heroku_production_app
  region     = var.heroku_region
  stack      = var.heroku_stack
  buildpacks = var.heroku_app_buildpacks

  config_vars = {
    APP_ENV = "production"
  }
}
