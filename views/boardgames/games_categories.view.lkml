# The name of this view in Looker is "Games Categories"
view: games_categories {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `boardgames.games_categories` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bg ID" in Explore.

  dimension: bg_id {
    type: number
    sql: ${TABLE}.bg_id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  measure: count {
    type: count
  }
}
