variable "heroku_account_email" { }
variable "heroku_api_key" { }
variable "heroku_pipeline_name" { }
variable "heroku_staging_app" {  }
variable "heroku_production_app" { }
variable "heroku_region" { }
variable "heroku_app_buildpacks" {
  type = list(string)
}
variable "heroku_staging_database" { }
variable "heroku_production_database" { }
variable "heroku_stack" { }
