view: account {
  sql_table_name: `focused-veld-203115.bizintel_data.tbl_Account` ;;

  dimension: account_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.AccountID ;;
  }
  dimension: app_status {
    type: string
    sql: ${TABLE}.AppStatus ;;
  }
  dimension_group: became_premium {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BecamePremium ;;
  }
  dimension: cache_logged_status {
    type: string
    sql: ${TABLE}.CacheLoggedStatus ;;
  }
  dimension: cache_viewed_status {
    type: string
    sql: ${TABLE}.CacheViewedStatus ;;
  }
  dimension: can_receive_marketing_email {
    type: number
    sql: ${TABLE}.CanReceiveMarketingEmail ;;
  }
  dimension: can_receive_newsletter_email {
    type: number
    sql: ${TABLE}.CanReceiveNewsletterEmail ;;
  }
  dimension: completed_adventure {
    type: number
    sql: ${TABLE}.CompletedAdventure ;;
  }
  dimension: completed_stage {
    type: number
    sql: ${TABLE}.CompletedStage ;;
  }
  dimension: continent_name {
    type: string
    sql: ${TABLE}.ContinentName ;;
  }
  dimension: conversion_sku {
    type: string
    sql: ${TABLE}.ConversionSKU ;;
  }
  dimension: conversion_skusource {
    type: string
    sql: ${TABLE}.ConversionSKUsource ;;
  }
  dimension: country_name {
    type: string
    sql: ${TABLE}.CountryName ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreateDate ;;
  }
  dimension_group: current_year_date_stream {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CurrentYear_DateStream ;;
  }
  dimension: days_to_first_find {
    type: number
    sql: ${TABLE}.DaysToFirstFind ;;
  }
  dimension: days_to_second_find {
    type: number
    sql: ${TABLE}.DaysToSecondFind ;;
  }
  dimension_group: extract {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ExtractDate ;;
  }
  dimension: find_category {
    type: string
    sql: ${TABLE}.FindCategory ;;
  }
  dimension: find_category_sort {
    type: number
    sql: ${TABLE}.FindCategorySort ;;
  }
  dimension: find_count {
    type: number
    sql: ${TABLE}.FindCount ;;
  }
  dimension: finds_when_became_premium {
    type: number
    sql: ${TABLE}.FindsWhenBecamePremium ;;
  }
  dimension_group: first_adventures_find {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstAdventuresFind ;;
  }
  dimension_group: first_cache_viewed {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstCacheViewedDate ;;
  }
  dimension: first_caches_viewed_count {
    type: number
    sql: ${TABLE}.FirstCachesViewedCount ;;
  }
  dimension_group: first_find {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstFindDate ;;
  }
  dimension: first_viewed_cache_id {
    type: number
    sql: ${TABLE}.FirstViewed_CacheID ;;
  }
  dimension: has_open_drafts {
    type: number
    sql: ${TABLE}.HasOpenDrafts ;;
  }
  dimension: hide_count {
    type: number
    sql: ${TABLE}.HideCount ;;
  }
  dimension: home_coordinates_latitude {
    type: number
    sql: ${TABLE}.HomeCoordinatesLatitude ;;
  }
  dimension: home_coordinates_longitude {
    type: number
    sql: ${TABLE}.HomeCoordinatesLongitude ;;
  }
  dimension: ipaddress_at_registration {
    type: string
    sql: ${TABLE}.IPAddressAtRegistration ;;
  }
  dimension: is_validated {
    type: number
    sql: ${TABLE}.IsValidated ;;
  }
  dimension: lag1_days_flag {
    type: string
    sql: ${TABLE}.Lag1DaysFlag ;;
  }
  dimension: lag31_days_flag {
    type: string
    sql: ${TABLE}.Lag31DaysFlag ;;
  }
  dimension: lag7_days_flag {
    type: string
    sql: ${TABLE}.Lag7DaysFlag ;;
  }
  dimension_group: last_activity {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastActivity ;;
  }
  dimension_group: last_app_use {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastAppUse ;;
  }
  dimension_group: last_cache_find {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastCacheFindDate ;;
  }
  dimension_group: last_cache_log {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastCacheLog ;;
  }
  dimension_group: last_cache_viewed {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastCacheViewed ;;
  }
  dimension: last_sku {
    type: string
    sql: ${TABLE}.LastSKU ;;
  }
  dimension: last_skusource {
    type: string
    sql: ${TABLE}.LastSKUsource ;;
  }
  dimension_group: last_web_use {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastWebUse ;;
  }
  dimension: locale {
    type: string
    sql: ${TABLE}.Locale ;;
  }
  dimension_group: membership_expiration {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MembershipExpirationDate ;;
  }
  dimension: newsletter_locale {
    type: string
    sql: ${TABLE}.NewsletterLocale ;;
  }
  dimension: open_draft_count {
    type: number
    sql: ${TABLE}.OpenDraftCount ;;
  }
  dimension: pmstatus {
    type: string
    sql: ${TABLE}.PMStatus ;;
  }
  dimension: public_guid {
    type: string
    sql: ${TABLE}.PublicGuid ;;
  }
  dimension: signup_game {
    type: string
    sql: ${TABLE}.SignupGame ;;
  }
  dimension: signup_method {
    type: string
    sql: ${TABLE}.SignupMethod ;;
  }
  dimension: signup_platform {
    type: string
    sql: ${TABLE}.SignupPlatform ;;
  }
  dimension: signup_source {
    type: string
    sql: ${TABLE}.SignupSource ;;
  }
  dimension: total_favorite_points {
    type: number
    sql: ${TABLE}.TotalFavoritePoints ;;
  }
  measure: count {
    type: count
    drill_fields: [country_name, continent_name]
  }
}
