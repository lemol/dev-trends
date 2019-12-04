-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.PullRequestReviewState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a pull request review.

  - Approved - A review allowing the pull request to merge.
  - ChangesRequested - A review blocking the pull request from merging.
  - Commented - An informational review.
  - Dismissed - A review that has been dismissed.
  - Pending - A review that has not yet been submitted.

-}
type PullRequestReviewState
    = Approved
    | ChangesRequested
    | Commented
    | Dismissed
    | Pending


list : List PullRequestReviewState
list =
    [ Approved, ChangesRequested, Commented, Dismissed, Pending ]


decoder : Decoder PullRequestReviewState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "APPROVED" ->
                        Decode.succeed Approved

                    "CHANGES_REQUESTED" ->
                        Decode.succeed ChangesRequested

                    "COMMENTED" ->
                        Decode.succeed Commented

                    "DISMISSED" ->
                        Decode.succeed Dismissed

                    "PENDING" ->
                        Decode.succeed Pending

                    _ ->
                        Decode.fail ("Invalid PullRequestReviewState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : PullRequestReviewState -> String
toString enum =
    case enum of
        Approved ->
            "APPROVED"

        ChangesRequested ->
            "CHANGES_REQUESTED"

        Commented ->
            "COMMENTED"

        Dismissed ->
            "DISMISSED"

        Pending ->
            "PENDING"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe PullRequestReviewState
fromString enumString =
    case enumString of
        "APPROVED" ->
            Just Approved

        "CHANGES_REQUESTED" ->
            Just ChangesRequested

        "COMMENTED" ->
            Just Commented

        "DISMISSED" ->
            Just Dismissed

        "PENDING" ->
            Just Pending

        _ ->
            Nothing
