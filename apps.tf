resource "heroku_app" "staging" {
  name = var.heroku_staging_app
  region = var.heroku_region

  config_vars = {
    APP_ENV = "staging",
    ASPNETCORE_ENVIRONMENT = "staging",
   "ConnectionStrings:Default" = "Host=ec2-3-226-231-4.compute-1.amazonaws.com;Port=5432;Username=gpjcaofzeobuiu;Password=a3a90a47afd5576e33adee3dc7202de733cbf786687e96a328eeaa7eaaec923e;Database=d1uvlefds4j0ci;",
   "JWT:Secret" = "4ad83c88c8676f939ac98756d8049822b417e4d20a89675b9ca4e4df76b022c69280646b0754e4e5cea066db427150fbf852814d0ae0dea7a2b486fff063bde2",
   "JWT:ValidAudience" = "http://localhost:4200",
   "JWT:ValidIssuer" = "http://localhost:61955",
   "AllowedAddresses:Default" = "*"
  }

  buildpacks = var.heroku_app_buildpacks
}

resource "heroku_app" "production" {
  name = var.heroku_production_app
  region = var.heroku_region

  config_vars = {
    APP_ENV = "production"
  }

  buildpacks = var.heroku_app_buildpacks
}
