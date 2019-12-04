-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.SecurityAdvisoryIdentifierType exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Identifier formats available for advisories.

  - Cve - Common Vulnerabilities and Exposures Identifier.
  - Ghsa - GitHub Security Advisory ID.

-}
type SecurityAdvisoryIdentifierType
    = Cve
    | Ghsa


list : List SecurityAdvisoryIdentifierType
list =
    [ Cve, Ghsa ]


decoder : Decoder SecurityAdvisoryIdentifierType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CVE" ->
                        Decode.succeed Cve

                    "GHSA" ->
                        Decode.succeed Ghsa

                    _ ->
                        Decode.fail ("Invalid SecurityAdvisoryIdentifierType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : SecurityAdvisoryIdentifierType -> String
toString enum =
    case enum of
        Cve ->
            "CVE"

        Ghsa ->
            "GHSA"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe SecurityAdvisoryIdentifierType
fromString enumString =
    case enumString of
        "CVE" ->
            Just Cve

        "GHSA" ->
            Just Ghsa

        _ ->
            Nothing
