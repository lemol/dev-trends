-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.StatusContext exposing (..)

import Github.Enum.StatusState
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


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| The avatar of the OAuth application or the user that created the status

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.StatusContext
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "avatarUrl" optionalArgs (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| This commit this status context is attached to.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> SelectionSet (Maybe decodesTo) Github.Object.StatusContext
commit object_ =
    Object.selectionForCompositeField "commit" [] object_ (identity >> Decode.nullable)


{-| The name of this status context.
-}
context : SelectionSet String Github.Object.StatusContext
context =
    Object.selectionForField "String" "context" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.StatusContext
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The actor who created this status context.
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.StatusContext
creator object_ =
    Object.selectionForCompositeField "creator" [] object_ (identity >> Decode.nullable)


{-| The description for this status context.
-}
description : SelectionSet (Maybe String) Github.Object.StatusContext
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| -}
id : SelectionSet Github.ScalarCodecs.Id Github.Object.StatusContext
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The state of this status context.
-}
state : SelectionSet Github.Enum.StatusState.StatusState Github.Object.StatusContext
state =
    Object.selectionForField "Enum.StatusState.StatusState" "state" [] Github.Enum.StatusState.decoder


{-| The URL for this status context.
-}
targetUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.StatusContext
targetUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "targetUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)
