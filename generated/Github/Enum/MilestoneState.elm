-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.MilestoneState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a milestone.

  - Closed - A milestone that has been closed.
  - Open - A milestone that is still open.

-}
type MilestoneState
    = Closed
    | Open


list : List MilestoneState
list =
    [ Closed, Open ]


decoder : Decoder MilestoneState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CLOSED" ->
                        Decode.succeed Closed

                    "OPEN" ->
                        Decode.succeed Open

                    _ ->
                        Decode.fail ("Invalid MilestoneState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : MilestoneState -> String
toString enum =
    case enum of
        Closed ->
            "CLOSED"

        Open ->
            "OPEN"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe MilestoneState
fromString enumString =
    case enumString of
        "CLOSED" ->
            Just Closed

        "OPEN" ->
            Just Open

        _ ->
            Nothing
