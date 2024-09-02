1) This codegen package can be used to auto-create yml files for models:

  - package: dbt-labs/codegen
    version: 0.9.0

Run the following using your model and you can auto create yml files:

dbt run-operation generate_model_yaml --args "{"model_names": ["stg_ecommerce__orders"]}"

The results will appear in system logs, and you can copy/past results to needed yml file

2) +persist_docs in project.yml can be used to write descriptions into cloud warehouse (this case, Bigquery)

    +persist_docs: #writes all of our column desciptions into BigQuery!
            relation: true
            columns: true

3) Test severity can be set project-wide on dbt_project.yml

tests:
  domain_expansion:
    +severity: warn
    marts:
      +severity: error

4) In Jinja, the following brackets represent different things:
    {% %} Function, in SQL
    {{ }} Variable, to be Replaced in SQL
    {# #} Mutliple Line Comment

5) where statments can be run on Tests