-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.OrganizationMemberRole exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible roles within an organization for its members.

  - Admin - The user is an administrator of the organization.
  - Member - The user is a member of the organization.

-}
type OrganizationMemberRole
    = Admin
    | Member


list : List OrganizationMemberRole
list =
    [ Admin, Member ]


decoder : Decoder OrganizationMemberRole
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ADMIN" ->
                        Decode.succeed Admin

                    "MEMBER" ->
                        Decode.succeed Member

                    _ ->
                        Decode.fail ("Invalid OrganizationMemberRole type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : OrganizationMemberRole -> String
toString enum =
    case enum of
        Admin ->
            "ADMIN"

        Member ->
            "MEMBER"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe OrganizationMemberRole
fromString enumString =
    case enumString of
        "ADMIN" ->
            Just Admin

        "MEMBER" ->
            Just Member

        _ ->
            Nothing