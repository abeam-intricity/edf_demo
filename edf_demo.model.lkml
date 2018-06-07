connection: "edf_snowflake"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: edf_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: edf_demo_default_datagroup

explore: looker_demo_data_constituents {}

explore: vw_looker_demo_data_constituents {}
