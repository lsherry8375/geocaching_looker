
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
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.key ;;
  }

  dimension: outing_date {
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
    hidden: yes
    sql: ${TABLE}.TotalCachesFound ;;
  }

  dimension_group: outings_since_signup {
    type: duration
    intervals: [day, week, month, year]
    sql_start: account.CreateDate;;
    sql_end: ${outing_date};;
  }

  dimension: M1_find{
    type: yesno
    sql: DATE_DIFF(${outing_date},Account.CreateDate,DAY)<30;;
  }

  measure: total_outings {
    type: count
  }

  measure: total_finds {
    type: sum
    sql: ${total_caches_found} ;;
  }

  set: detail {
    fields: [
        key,
  outing_date,
  account_id,
  total_caches_found
    ]
  }
}
