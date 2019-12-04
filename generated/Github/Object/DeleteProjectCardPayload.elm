-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.DeleteProjectCardPayload exposing (..)

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


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Github.Object.DeleteProjectCardPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The column the deleted card was in.
-}
column : SelectionSet decodesTo Github.Object.ProjectColumn -> SelectionSet (Maybe decodesTo) Github.Object.DeleteProjectCardPayload
column object_ =
    Object.selectionForCompositeField "column" [] object_ (identity >> Decode.nullable)


{-| The deleted card ID.
-}
deletedCardId : SelectionSet (Maybe Github.ScalarCodecs.Id) Github.Object.DeleteProjectCardPayload
deletedCardId =
    Object.selectionForField "(Maybe ScalarCodecs.Id)" "deletedCardId" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder |> Decode.nullable)
