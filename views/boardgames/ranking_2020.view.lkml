# The name of this view in Looker is "Ranking 2020"
view: ranking_2020 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `boardgames.ranking_2020` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Average" in Explore.

  dimension: average {
    type: number
    sql: ${TABLE}.Average ;;
  }

  dimension: bayes_average {
    type: number
    sql: ${TABLE}.Bayes_average ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.Thumbnail ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: users_rated {
    type: number
    sql: ${TABLE}.Users_rated ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
