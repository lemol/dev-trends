-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.MembersCanDeleteReposDisableAuditEntry exposing (..)

import Github.Enum.OperationType
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


{-| The action name
-}
action : SelectionSet String Github.Object.MembersCanDeleteReposDisableAuditEntry
action =
    Object.selectionForField "String" "action" [] Decode.string


{-| The user who initiated the action
-}
actor : SelectionSet decodesTo Github.Union.AuditEntryActor -> SelectionSet (Maybe decodesTo) Github.Object.MembersCanDeleteReposDisableAuditEntry
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| The IP address of the actor
-}
actorIp : SelectionSet (Maybe String) Github.Object.MembersCanDeleteReposDisableAuditEntry
actorIp =
    Object.selectionForField "(Maybe String)" "actorIp" [] (Decode.string |> Decode.nullable)


{-| A readable representation of the actor's location
-}
actorLocation : SelectionSet decodesTo Github.Object.ActorLocation -> SelectionSet (Maybe decodesTo) Github.Object.MembersCanDeleteReposDisableAuditEntry
actorLocation object_ =
    Object.selectionForCompositeField "actorLocation" [] object_ (identity >> Decode.nullable)


{-| The username of the user who initiated the action
-}
actorLogin : SelectionSet (Maybe String) Github.Object.MembersCanDeleteReposDisableAuditEntry
actorLogin =
    Object.selectionForField "(Maybe String)" "actorLogin" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the actor.
-}
actorResourcePath : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.MembersCanDeleteReposDisableAuditEntry
actorResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "actorResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the actor.
-}
actorUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.MembersCanDeleteReposDisableAuditEntry
actorUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "actorUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The time the action was initiated
-}
createdAt : SelectionSet Github.ScalarCodecs.PreciseDateTime Github.Object.MembersCanDeleteReposDisableAuditEntry
createdAt =
    Object.selectionForField "ScalarCodecs.PreciseDateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecPreciseDateTime |> .decoder)


{-| The HTTP path for this enterprise.
-}
enterpriseResourcePath : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.MembersCanDeleteReposDisableAuditEntry
enterpriseResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "enterpriseResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The slug of the enterprise.
-}
enterpriseSlug : SelectionSet (Maybe String) Github.Object.MembersCanDeleteReposDisableAuditEntry
enterpriseSlug =
    Object.selectionForField "(Maybe String)" "enterpriseSlug" [] (Decode.string |> Decode.nullable)


{-| The HTTP URL for this enterprise.
-}
enterpriseUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.MembersCanDeleteReposDisableAuditEntry
enterpriseUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "enterpriseUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| -}
id : SelectionSet Github.ScalarCodecs.Id Github.Object.MembersCanDeleteReposDisableAuditEntry
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The corresponding operation type for the action
-}
operationType : SelectionSet (Maybe Github.Enum.OperationType.OperationType) Github.Object.MembersCanDeleteReposDisableAuditEntry
operationType =
    Object.selectionForField "(Maybe Enum.OperationType.OperationType)" "operationType" [] (Github.Enum.OperationType.decoder |> Decode.nullable)


{-| The Organization associated with the Audit Entry.
-}
organization : SelectionSet decodesTo Github.Object.Organization -> SelectionSet (Maybe decodesTo) Github.Object.MembersCanDeleteReposDisableAuditEntry
organization object_ =
    Object.selectionForCompositeField "organization" [] object_ (identity >> Decode.nullable)


{-| The name of the Organization.
-}
organizationName : SelectionSet (Maybe String) Github.Object.MembersCanDeleteReposDisableAuditEntry
organizationName =
    Object.selectionForField "(Maybe String)" "organizationName" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the organization
-}
organizationResourcePath : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.MembersCanDeleteReposDisableAuditEntry
organizationResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "organizationResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the organization
-}
organizationUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.MembersCanDeleteReposDisableAuditEntry
organizationUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "organizationUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The user affected by the action
-}
user : SelectionSet decodesTo Github.Object.User -> SelectionSet (Maybe decodesTo) Github.Object.MembersCanDeleteReposDisableAuditEntry
user object_ =
    Object.selectionForCompositeField "user" [] object_ (identity >> Decode.nullable)


{-| For actions involving two users, the actor is the initiator and the user is the affected user.
-}
userLogin : SelectionSet (Maybe String) Github.Object.MembersCanDeleteReposDisableAuditEntry
userLogin =
    Object.selectionForField "(Maybe String)" "userLogin" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the user.
-}
userResourcePath : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.MembersCanDeleteReposDisableAuditEntry
userResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "userResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the user.
-}
userUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.MembersCanDeleteReposDisableAuditEntry
userUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "userUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)
