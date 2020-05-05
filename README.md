## Heroku-Terraform

This project creates a basic [Heroku](http://heroku.com/) infraistructure using [Terraform](https://www.terraform.io/).

Using your Heroku account, it will create the following:

- Pipeline
- 2 apps (Staging and Production)
- Database (Addons for Heroku Postgres)
- Integration of the addons

## Pre-requisites and Installation

To run this project you need to have Terraform installed (_Version used is v0.12.24_)

`$ brew install terraform`

## Setup the project

1. Install the pre-requisites above
2. `$ git clone git@github.com:ffscalco/heroku-terraform.git` - Clone the project
3. `$ cd heroku-terraform` - Go into the project folder
4. The file `variables.tf` have all the variables used in this project. The `terraform.tfvars.sample` file works like your `.env`, so copy the `terraform.tfvars.sample` to a new file `terraform.tfvars` and replace them with the configuration you'd like.
5. `$ terraform init` - Once you have your config set up, you need to initialize terraform, this command will download and install the plugins required by Terraform.

## Planning and Applying Changes

- `$ terraform plan` - dry run the scripts against the provider and check if your scripts are okay.
- `$ terraform apply` - Once you're happy with your changes, run this command. It will run the configuration against the provider and provision the resources
- `$ terraform destroy` - if you want to delete your infra.


### Credits

- https://medium.com/rackbrains/manage-heroku-infrastructure-with-terraform-4a167b850300
