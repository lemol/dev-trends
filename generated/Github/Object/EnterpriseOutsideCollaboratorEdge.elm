-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.EnterpriseOutsideCollaboratorEdge exposing (..)

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
cursor : SelectionSet String Github.Object.EnterpriseOutsideCollaboratorEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string


{-| Whether the outside collaborator does not have a license for the enterprise.
-}
isUnlicensed : SelectionSet Bool Github.Object.EnterpriseOutsideCollaboratorEdge
isUnlicensed =
    Object.selectionForField "Bool" "isUnlicensed" [] Decode.bool


{-| The item at the end of the edge.
-}
node : SelectionSet decodesTo Github.Object.User -> SelectionSet (Maybe decodesTo) Github.Object.EnterpriseOutsideCollaboratorEdge
node object_ =
    Object.selectionForCompositeField "node" [] object_ (identity >> Decode.nullable)


type alias RepositoriesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument Github.InputObject.RepositoryOrder
    }


{-| The enterprise organization repositories this user is a member of.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Ordering options for repositories.

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.EnterpriseRepositoryInfoConnection -> SelectionSet decodesTo Github.Object.EnterpriseOutsideCollaboratorEdge
repositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeRepositoryOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "repositories" optionalArgs object_ identity
