-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.BranchProtectionRuleConflict exposing (..)

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


{-| Identifies the branch protection rule.
-}
branchProtectionRule : SelectionSet decodesTo Github.Object.BranchProtectionRule -> SelectionSet (Maybe decodesTo) Github.Object.BranchProtectionRuleConflict
branchProtectionRule object_ =
    Object.selectionForCompositeField "branchProtectionRule" [] object_ (identity >> Decode.nullable)


{-| Identifies the conflicting branch protection rule.
-}
conflictingBranchProtectionRule : SelectionSet decodesTo Github.Object.BranchProtectionRule -> SelectionSet (Maybe decodesTo) Github.Object.BranchProtectionRuleConflict
conflictingBranchProtectionRule object_ =
    Object.selectionForCompositeField "conflictingBranchProtectionRule" [] object_ (identity >> Decode.nullable)


{-| Identifies the branch ref that has conflicting rules
-}
ref : SelectionSet decodesTo Github.Object.Ref -> SelectionSet (Maybe decodesTo) Github.Object.BranchProtectionRuleConflict
ref object_ =
    Object.selectionForCompositeField "ref" [] object_ (identity >> Decode.nullable)
