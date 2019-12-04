-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RepositoryCollaboratorEdge exposing (..)

import Github.Enum.RepositoryPermission
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
cursor : SelectionSet String Github.Object.RepositoryCollaboratorEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string


{-| -}
node : SelectionSet decodesTo Github.Object.User -> SelectionSet decodesTo Github.Object.RepositoryCollaboratorEdge
node object_ =
    Object.selectionForCompositeField "node" [] object_ identity


{-| The permission the user has on the repository.
-}
permission : SelectionSet Github.Enum.RepositoryPermission.RepositoryPermission Github.Object.RepositoryCollaboratorEdge
permission =
    Object.selectionForField "Enum.RepositoryPermission.RepositoryPermission" "permission" [] Github.Enum.RepositoryPermission.decoder


{-| A list of sources for the user's access to the repository.
-}
permissionSources : SelectionSet decodesTo Github.Object.PermissionSource -> SelectionSet (Maybe (List decodesTo)) Github.Object.RepositoryCollaboratorEdge
permissionSources object_ =
    Object.selectionForCompositeField "permissionSources" [] object_ (identity >> Decode.list >> Decode.nullable)
