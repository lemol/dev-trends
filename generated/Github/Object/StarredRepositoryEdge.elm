-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.StarredRepositoryEdge exposing (..)

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
cursor : SelectionSet String Github.Object.StarredRepositoryEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string


{-| -}
node : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.StarredRepositoryEdge
node object_ =
    Object.selectionForCompositeField "node" [] object_ identity


{-| Identifies when the item was starred.
-}
starredAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.StarredRepositoryEdge
starredAt =
    Object.selectionForField "ScalarCodecs.DateTime" "starredAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
