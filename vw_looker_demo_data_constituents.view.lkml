view: vw_looker_demo_data_constituents {
  sql_table_name: EDF_EDW.VW_LOOKER_DEMO_DATA_CONSTITUENTS ;;

  dimension: activism_type {
    type: string
    sql: ${TABLE}.ACTIVISM_TYPE ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.AGE ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: campaign_start_date {
    type: string
    sql: ${TABLE}.CAMPAIGN_START_DATE ;;
  }

  dimension: communication_type {
    type: string
    sql: ${TABLE}.COMMUNICATION_TYPE ;;
  }

  dimension: congressional_destrict {
    type: string
    sql: ${TABLE}.CONGRESSIONAL_DESTRICT ;;
  }

  dimension: congressional_destrict_max {
    type: number
    sql: ${TABLE}.CONGRESSIONAL_DESTRICT_MAX ;;
  }

  dimension: constituent {
    type: string
    sql: ${TABLE}.CONSTITUENT ;;
  }

  dimension: constituent_city {
    type: string
    sql: ${TABLE}.CONSTITUENT_CITY ;;
  }

  dimension: constituent_state {
    type: string
    sql: ${TABLE}.CONSTITUENT_STATE ;;
  }

  dimension: constituent_zip {
    type: string
    sql: ${TABLE}.CONSTITUENT_ZIP ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }

  dimension: donation_amt {
    type: number
    sql: ${TABLE}.DONATION_AMT ;;
  }

  dimension: donation_type {
    type: string
    sql: ${TABLE}.DONATION_TYPE ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: test_response {
    type: string
    sql: ${TABLE}.TEST_RESPONSE ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }

  measure: total_donation_amt {
    type: sum
    sql: ${donation_amt} ;;
  }
}
