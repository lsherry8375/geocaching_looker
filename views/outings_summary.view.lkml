view: outings_summary {
  sql_table_name: `focused-veld-203115.outings_analytics.outings_summary` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountID ;;
  }
  dimension: cumulative_finds {
    type: number
    sql: ${TABLE}.cumulative_finds ;;
  }
  dimension: cumulative_outings {
    type: number
    sql: ${TABLE}.cumulative_outings ;;
  }
  dimension: finds_last_30_days {
    type: number
    sql: ${TABLE}.finds_last_30_days ;;
  }
  dimension: finds_last_365_days {
    type: number
    sql: ${TABLE}.finds_last_365_days ;;
  }
  dimension: finds_last_60_days {
    type: number
    sql: ${TABLE}.finds_last_60_days ;;
  }
  dimension: finds_last_90_days {
    type: number
    sql: ${TABLE}.finds_last_90_days ;;
  }
  dimension: outings_last_30_days {
    type: number
    sql: ${TABLE}.outings_last_30_days ;;
  }
  dimension: outings_last_365_days {
    type: number
    sql: ${TABLE}.outings_last_365_days ;;
  }

  dimension: outings_last_365_days_tier {
    type: tier
    tiers: [0,1,2,3,4,5,10,20,30,40,50,60,70,80,100,300]
    style: integer
    sql: ${outings_last_365_days} ;;
  }

  dimension: outings_last_60_days {
    type: number
    sql: ${TABLE}.outings_last_60_days ;;
  }
  dimension: outings_last_90_days {
    type: number
    sql: ${TABLE}.outings_last_90_days ;;
  }
  measure: count {
    type: count
  }
}
