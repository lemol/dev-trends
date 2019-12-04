-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry exposing (..)

import Github.Enum.OperationType
import Github.Enum.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission
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
action : SelectionSet String Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
action =
    Object.selectionForField "String" "action" [] Decode.string


{-| The user who initiated the action
-}
actor : SelectionSet decodesTo Github.Union.AuditEntryActor -> SelectionSet (Maybe decodesTo) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| The IP address of the actor
-}
actorIp : SelectionSet (Maybe String) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
actorIp =
    Object.selectionForField "(Maybe String)" "actorIp" [] (Decode.string |> Decode.nullable)


{-| A readable representation of the actor's location
-}
actorLocation : SelectionSet decodesTo Github.Object.ActorLocation -> SelectionSet (Maybe decodesTo) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
actorLocation object_ =
    Object.selectionForCompositeField "actorLocation" [] object_ (identity >> Decode.nullable)


{-| The username of the user who initiated the action
-}
actorLogin : SelectionSet (Maybe String) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
actorLogin =
    Object.selectionForField "(Maybe String)" "actorLogin" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the actor.
-}
actorResourcePath : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
actorResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "actorResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the actor.
-}
actorUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
actorUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "actorUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The time the action was initiated
-}
createdAt : SelectionSet Github.ScalarCodecs.PreciseDateTime Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
createdAt =
    Object.selectionForField "ScalarCodecs.PreciseDateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecPreciseDateTime |> .decoder)


{-| -}
id : SelectionSet Github.ScalarCodecs.Id Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The corresponding operation type for the action
-}
operationType : SelectionSet (Maybe Github.Enum.OperationType.OperationType) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
operationType =
    Object.selectionForField "(Maybe Enum.OperationType.OperationType)" "operationType" [] (Github.Enum.OperationType.decoder |> Decode.nullable)


{-| The Organization associated with the Audit Entry.
-}
organization : SelectionSet decodesTo Github.Object.Organization -> SelectionSet (Maybe decodesTo) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
organization object_ =
    Object.selectionForCompositeField "organization" [] object_ (identity >> Decode.nullable)


{-| The name of the Organization.
-}
organizationName : SelectionSet (Maybe String) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
organizationName =
    Object.selectionForField "(Maybe String)" "organizationName" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the organization
-}
organizationResourcePath : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
organizationResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "organizationResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the organization
-}
organizationUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
organizationUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "organizationUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The new default repository permission level for the organization.
-}
permission : SelectionSet (Maybe Github.Enum.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
permission =
    Object.selectionForField "(Maybe Enum.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission)" "permission" [] (Github.Enum.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission.decoder |> Decode.nullable)


{-| The former default repository permission level for the organization.
-}
permissionWas : SelectionSet (Maybe Github.Enum.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
permissionWas =
    Object.selectionForField "(Maybe Enum.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission)" "permissionWas" [] (Github.Enum.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission.decoder |> Decode.nullable)


{-| The user affected by the action
-}
user : SelectionSet decodesTo Github.Object.User -> SelectionSet (Maybe decodesTo) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
user object_ =
    Object.selectionForCompositeField "user" [] object_ (identity >> Decode.nullable)


{-| For actions involving two users, the actor is the initiator and the user is the affected user.
-}
userLogin : SelectionSet (Maybe String) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
userLogin =
    Object.selectionForField "(Maybe String)" "userLogin" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the user.
-}
userResourcePath : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
userResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "userResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the user.
-}
userUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
userUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "userUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)
