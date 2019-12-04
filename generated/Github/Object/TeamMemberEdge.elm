-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.TeamMemberEdge exposing (..)

import Github.Enum.TeamMemberRole
import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarCodecs
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| A cursor for use in pagination.
-}
cursor : SelectionSet String Github.Object.TeamMemberEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string


{-| The HTTP path to the organization's member access page.
-}
memberAccessResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.TeamMemberEdge
memberAccessResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "memberAccessResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL to the organization's member access page.
-}
memberAccessUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.TeamMemberEdge
memberAccessUrl =
    Object.selectionForField "ScalarCodecs.Uri" "memberAccessUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| -}
node : SelectionSet decodesTo Github.Object.User -> SelectionSet decodesTo Github.Object.TeamMemberEdge
node object_ =
    Object.selectionForCompositeField "node" [] object_ identity


{-| The role the member has on the team.
-}
role : SelectionSet Github.Enum.TeamMemberRole.TeamMemberRole Github.Object.TeamMemberEdge
role =
    Object.selectionForField "Enum.TeamMemberRole.TeamMemberRole" "role" [] Github.Enum.TeamMemberRole.decoder
