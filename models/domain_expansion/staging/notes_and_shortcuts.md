 This codegen package can be used to auto-create yml files for models:

  - package: dbt-labs/codegen
    version: 0.9.0

Run the following using your model and you can auto create yml files:

dbt run-operation generate_model_yaml --args "{"model_names": ["stg_ecommerce__orders"]}"

The results will appear in system logs, and you can copy/past results to needed yml file