-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.HovercardContext exposing (..)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onGenericHovercardContext : SelectionSet decodesTo Github.Object.GenericHovercardContext
    , onOrganizationsHovercardContext : SelectionSet decodesTo Github.Object.OrganizationsHovercardContext
    , onOrganizationTeamsHovercardContext : SelectionSet decodesTo Github.Object.OrganizationTeamsHovercardContext
    , onReviewStatusHovercardContext : SelectionSet decodesTo Github.Object.ReviewStatusHovercardContext
    , onViewerHovercardContext : SelectionSet decodesTo Github.Object.ViewerHovercardContext
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Github.Interface.HovercardContext
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "GenericHovercardContext" selections.onGenericHovercardContext
        , Object.buildFragment "OrganizationsHovercardContext" selections.onOrganizationsHovercardContext
        , Object.buildFragment "OrganizationTeamsHovercardContext" selections.onOrganizationTeamsHovercardContext
        , Object.buildFragment "ReviewStatusHovercardContext" selections.onReviewStatusHovercardContext
        , Object.buildFragment "ViewerHovercardContext" selections.onViewerHovercardContext
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onGenericHovercardContext = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrganizationsHovercardContext = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrganizationTeamsHovercardContext = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReviewStatusHovercardContext = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onViewerHovercardContext = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| A string describing this context
-}
message : SelectionSet String Github.Interface.HovercardContext
message =
    Object.selectionForField "String" "message" [] Decode.string


{-| An octicon to accompany this context
-}
octicon : SelectionSet String Github.Interface.HovercardContext
octicon =
    Object.selectionForField "String" "octicon" [] Decode.string
