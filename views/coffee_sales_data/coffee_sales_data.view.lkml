# The name of this view in Looker is "Coffee Sales Data"
view: coffee_sales_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `coffee_sales_data.coffee_sales_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Card" in Explore.

  dimension: card {
    type: string
    sql: ${TABLE}.card ;;
  }

  dimension: cash_type {
    type: string
    sql: ${TABLE}.cash_type ;;
  }

  dimension: coffee_name {
    type: string
    sql: ${TABLE}.coffee_name ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension_group: datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.datetime ;;
  }

  dimension: money {
    type: number
    sql: ${TABLE}.money ;;
  }
  measure: count {
    type: count
    drill_fields: [coffee_name]
  }
}
