connection: "geocaching-looker"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: lee_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

label: "E-Commerce Training"

explore: outings {
  join: account {
    type: left_outer
    sql_on: ${outings.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }
}

persist_with: lee_default_datagroup
