-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.CrossReferencedEvent exposing (..)

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


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.CrossReferencedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.CrossReferencedEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| -}
id : SelectionSet Github.ScalarCodecs.Id Github.Object.CrossReferencedEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Reference originated in a different repository.
-}
isCrossRepository : SelectionSet Bool Github.Object.CrossReferencedEvent
isCrossRepository =
    Object.selectionForField "Bool" "isCrossRepository" [] Decode.bool


{-| Identifies when the reference was made.
-}
referencedAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.CrossReferencedEvent
referencedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "referencedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP path for this pull request.
-}
resourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.CrossReferencedEvent
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Issue or pull request that made the reference.
-}
source : SelectionSet decodesTo Github.Union.ReferencedSubject -> SelectionSet decodesTo Github.Object.CrossReferencedEvent
source object_ =
    Object.selectionForCompositeField "source" [] object_ identity


{-| Issue or pull request to which the reference was made.
-}
target : SelectionSet decodesTo Github.Union.ReferencedSubject -> SelectionSet decodesTo Github.Object.CrossReferencedEvent
target object_ =
    Object.selectionForCompositeField "target" [] object_ identity


{-| The HTTP URL for this pull request.
-}
url : SelectionSet Github.ScalarCodecs.Uri Github.Object.CrossReferencedEvent
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Checks if the target will be closed when the source is merged.
-}
willCloseTarget : SelectionSet Bool Github.Object.CrossReferencedEvent
willCloseTarget =
    Object.selectionForField "Bool" "willCloseTarget" [] Decode.bool