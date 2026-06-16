# The name of this view in Looker is "Games Detailed"
view: games_detailed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `boardgames.games_detailed` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Artist" in Explore.

  dimension: artist {
    type: string
    sql: ${TABLE}.artist ;;
  }

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }

  dimension: board_game_rank {
    type: number
    sql: ${TABLE}.board_game_rank ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: compilation {
    type: string
    sql: ${TABLE}.compilation ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: designer {
    type: string
    sql: ${TABLE}.designer ;;
  }

  dimension: expansion {
    type: string
    sql: ${TABLE}.expansion ;;
  }

  dimension: family {
    type: string
    sql: ${TABLE}.family ;;
  }

  dimension: family_game_tank {
    type: number
    sql: ${TABLE}.family_game_tank ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: implementation {
    type: string
    sql: ${TABLE}.implementation ;;
  }

  dimension: integration {
    type: string
    sql: ${TABLE}.integration ;;
  }

  dimension: max_players {
    type: number
    sql: ${TABLE}.max_players ;;
  }

  dimension: max_playtime {
    type: number
    sql: ${TABLE}.max_playtime ;;
  }

  dimension: mechanic {
    type: string
    sql: ${TABLE}.mechanic ;;
  }

  dimension: min_age {
    type: number
    sql: ${TABLE}.min_age ;;
  }

  dimension: min_players {
    type: number
    sql: ${TABLE}.min_players ;;
  }

  dimension: min_playtime {
    type: number
    sql: ${TABLE}.min_playtime ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: num_comments {
    type: number
    sql: ${TABLE}.num_comments ;;
  }

  dimension: owned {
    type: number
    sql: ${TABLE}.owned ;;
  }

  dimension: playing_time {
    type: number
    sql: ${TABLE}.playing_time ;;
  }

  dimension: publisher {
    type: string
    sql: ${TABLE}.publisher ;;
  }

  dimension: strategy_game_rank {
    type: number
    sql: ${TABLE}.strategy_game_rank ;;
  }

  dimension: suggested_language_dependence {
    type: string
    sql: ${TABLE}.suggested_language_dependence ;;
  }

  dimension: suggested_num_players {
    type: string
    sql: ${TABLE}.suggested_num_players ;;
  }

  dimension: suggested_player_age {
    type: string
    sql: ${TABLE}.suggested_player_age ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.thumbnail ;;
  }

  dimension: trading {
    type: number
    sql: ${TABLE}.trading ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: users_rated {
    type: number
    sql: ${TABLE}.users_rated ;;
  }

  dimension: wanting {
    type: number
    sql: ${TABLE}.wanting ;;
  }

  dimension: wishing {
    type: number
    sql: ${TABLE}.wishing ;;
  }

  dimension: year_published {
    type: number
    sql: ${TABLE}.year_published ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
