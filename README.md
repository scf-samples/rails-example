# SCF Rails example application

## Deploy

1. Create a database service. It can be PostgreSQL or MySQL but has to be named
   `scf-rails-example-db` to match the value in the manifest.yml file.

   It will be a command like this: `cf create-service service_name the_desired_package scf-rails-example-db`

   Find out what you services you have available by running `cf marketplace`.

2. Run `cf push` from withing the root for this repository.
