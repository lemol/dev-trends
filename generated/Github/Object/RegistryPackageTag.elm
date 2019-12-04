-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RegistryPackageTag exposing (..)

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


{-| -}
id : SelectionSet Github.ScalarCodecs.Id Github.Object.RegistryPackageTag
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the tag name of the version.
-}
name : SelectionSet String Github.Object.RegistryPackageTag
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| version that the tag is associated with
-}
version : SelectionSet decodesTo Github.Object.RegistryPackageVersion -> SelectionSet (Maybe decodesTo) Github.Object.RegistryPackageTag
version object_ =
    Object.selectionForCompositeField "version" [] object_ (identity >> Decode.nullable)
