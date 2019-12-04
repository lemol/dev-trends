-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.SamlSignatureAlgorithm exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible signature algorithms used to sign SAML requests for a Identity Provider.

  - RsaSha1 - RSA-SHA1
  - RsaSha256 - RSA-SHA256
  - RsaSha384 - RSA-SHA384
  - RsaSha512 - RSA-SHA512

-}
type SamlSignatureAlgorithm
    = RsaSha1
    | RsaSha256
    | RsaSha384
    | RsaSha512


list : List SamlSignatureAlgorithm
list =
    [ RsaSha1, RsaSha256, RsaSha384, RsaSha512 ]


decoder : Decoder SamlSignatureAlgorithm
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "RSA_SHA1" ->
                        Decode.succeed RsaSha1

                    "RSA_SHA256" ->
                        Decode.succeed RsaSha256

                    "RSA_SHA384" ->
                        Decode.succeed RsaSha384

                    "RSA_SHA512" ->
                        Decode.succeed RsaSha512

                    _ ->
                        Decode.fail ("Invalid SamlSignatureAlgorithm type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : SamlSignatureAlgorithm -> String
toString enum =
    case enum of
        RsaSha1 ->
            "RSA_SHA1"

        RsaSha256 ->
            "RSA_SHA256"

        RsaSha384 ->
            "RSA_SHA384"

        RsaSha512 ->
            "RSA_SHA512"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe SamlSignatureAlgorithm
fromString enumString =
    case enumString of
        "RSA_SHA1" ->
            Just RsaSha1

        "RSA_SHA256" ->
            Just RsaSha256

        "RSA_SHA384" ->
            Just RsaSha384

        "RSA_SHA512" ->
            Just RsaSha512

        _ ->
            Nothing
