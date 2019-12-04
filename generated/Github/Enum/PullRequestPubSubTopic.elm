-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.PullRequestPubSubTopic exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible PubSub channels for a pull request.

  - HeadRef - The channel ID for observing head ref updates.
  - Markasread - The channel ID for marking an pull request as read.
  - State - The channel ID for observing pull request state updates.
  - Timeline - The channel ID for updating items on the pull request timeline.
  - Updated - The channel ID for observing pull request updates.

-}
type PullRequestPubSubTopic
    = HeadRef
    | Markasread
    | State
    | Timeline
    | Updated


list : List PullRequestPubSubTopic
list =
    [ HeadRef, Markasread, State, Timeline, Updated ]


decoder : Decoder PullRequestPubSubTopic
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "HEAD_REF" ->
                        Decode.succeed HeadRef

                    "MARKASREAD" ->
                        Decode.succeed Markasread

                    "STATE" ->
                        Decode.succeed State

                    "TIMELINE" ->
                        Decode.succeed Timeline

                    "UPDATED" ->
                        Decode.succeed Updated

                    _ ->
                        Decode.fail ("Invalid PullRequestPubSubTopic type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : PullRequestPubSubTopic -> String
toString enum =
    case enum of
        HeadRef ->
            "HEAD_REF"

        Markasread ->
            "MARKASREAD"

        State ->
            "STATE"

        Timeline ->
            "TIMELINE"

        Updated ->
            "UPDATED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe PullRequestPubSubTopic
fromString enumString =
    case enumString of
        "HEAD_REF" ->
            Just HeadRef

        "MARKASREAD" ->
            Just Markasread

        "STATE" ->
            Just State

        "TIMELINE" ->
            Just Timeline

        "UPDATED" ->
            Just Updated

        _ ->
            Nothing
