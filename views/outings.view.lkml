
view: outings {
  derived_table: {
    sql: SELECT CONCAT(REPLACE(CAST(rdate AS string),"-",""), cast(AccountID as string)) as key,* FROM `focused-veld-203115.bizintel_data.tbl_cache_outings`  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: key {
    type: string
    primary_key: yes
    sql: ${TABLE}.key ;;
  }

  dimension: rdate {
    type: date
    datatype: date
    sql: ${TABLE}.rdate ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountID ;;
  }

  dimension: total_caches_found {
    type: number
    sql: ${TABLE}.TotalCachesFound ;;
  }

  set: detail {
    fields: [
        key,
  rdate,
  account_id,
  total_caches_found
    ]
  }
}