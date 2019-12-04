-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Team exposing (..)

import Github.Enum.SubscriptionState
import Github.Enum.TeamMemberRole
import Github.Enum.TeamMembershipType
import Github.Enum.TeamPrivacy
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


type alias AncestorsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of teams that are ancestors of this team.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
ancestors : (AncestorsOptionalArguments -> AncestorsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> SelectionSet decodesTo Github.Object.Team
ancestors fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "ancestors" optionalArgs object_ identity


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the team's avatar.

  - size - The size in pixels of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.Team
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "avatarUrl" optionalArgs (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


type alias ChildTeamsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , immediateOnly : OptionalArgument Bool
    , last : OptionalArgument Int
    , orderBy : OptionalArgument Github.InputObject.TeamOrder
    , userLogins : OptionalArgument (List String)
    }


{-| List of child teams belonging to this team

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - immediateOnly - Whether to list immediate child teams or all descendant child teams.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Order for connection
  - userLogins - User logins to filter by

-}
childTeams : (ChildTeamsOptionalArguments -> ChildTeamsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> SelectionSet decodesTo Github.Object.Team
childTeams fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, immediateOnly = Absent, last = Absent, orderBy = Absent, userLogins = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "immediateOnly" filledInOptionals.immediateOnly Encode.bool, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeTeamOrder, Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "childTeams" optionalArgs object_ identity


{-| The slug corresponding to the organization and team.
-}
combinedSlug : SelectionSet String Github.Object.Team
combinedSlug =
    Object.selectionForField "String" "combinedSlug" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.Team
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The description of the team.
-}
description : SelectionSet (Maybe String) Github.Object.Team
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


type alias DiscussionRequiredArguments =
    { number : Int }


{-| Find a team discussion by its number.

  - number - The sequence number of the discussion to find.

-}
discussion : DiscussionRequiredArguments -> SelectionSet decodesTo Github.Object.TeamDiscussion -> SelectionSet (Maybe decodesTo) Github.Object.Team
discussion requiredArgs object_ =
    Object.selectionForCompositeField "discussion" [ Argument.required "number" requiredArgs.number Encode.int ] object_ (identity >> Decode.nullable)


type alias DiscussionsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , isPinned : OptionalArgument Bool
    , last : OptionalArgument Int
    , orderBy : OptionalArgument Github.InputObject.TeamDiscussionOrder
    }


{-| A list of team discussions.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - isPinned - If provided, filters discussions according to whether or not they are pinned.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Order for connection

-}
discussions : (DiscussionsOptionalArguments -> DiscussionsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamDiscussionConnection -> SelectionSet decodesTo Github.Object.Team
discussions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, isPinned = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "isPinned" filledInOptionals.isPinned Encode.bool, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeTeamDiscussionOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "discussions" optionalArgs object_ identity


{-| The HTTP path for team discussions
-}
discussionsResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
discussionsResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "discussionsResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for team discussions
-}
discussionsUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
discussionsUrl =
    Object.selectionForField "ScalarCodecs.Uri" "discussionsUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP path for editing this team
-}
editTeamResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
editTeamResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "editTeamResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for editing this team
-}
editTeamUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
editTeamUrl =
    Object.selectionForField "ScalarCodecs.Uri" "editTeamUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| -}
id : SelectionSet Github.ScalarCodecs.Id Github.Object.Team
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


type alias InvitationsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of pending invitations for users to this team

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
invitations : (InvitationsOptionalArguments -> InvitationsOptionalArguments) -> SelectionSet decodesTo Github.Object.OrganizationInvitationConnection -> SelectionSet (Maybe decodesTo) Github.Object.Team
invitations fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "invitations" optionalArgs object_ (identity >> Decode.nullable)


type alias MemberStatusesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument Github.InputObject.UserStatusOrder
    }


{-| Get the status messages members of this entity have set that are either public or visible only to the organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Ordering options for user statuses returned from the connection.

-}
memberStatuses : (MemberStatusesOptionalArguments -> MemberStatusesOptionalArguments) -> SelectionSet decodesTo Github.Object.UserStatusConnection -> SelectionSet decodesTo Github.Object.Team
memberStatuses fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeUserStatusOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "memberStatuses" optionalArgs object_ identity


type alias MembersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , membership : OptionalArgument Github.Enum.TeamMembershipType.TeamMembershipType
    , orderBy : OptionalArgument Github.InputObject.TeamMemberOrder
    , query : OptionalArgument String
    , role : OptionalArgument Github.Enum.TeamMemberRole.TeamMemberRole
    }


{-| A list of users who are members of this team.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - membership - Filter by membership type
  - orderBy - Order for the connection.
  - query - The search string to look for.
  - role - Filter by team member role

-}
members : (MembersOptionalArguments -> MembersOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamMemberConnection -> SelectionSet decodesTo Github.Object.Team
members fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, membership = Absent, orderBy = Absent, query = Absent, role = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "membership" filledInOptionals.membership (Encode.enum Github.Enum.TeamMembershipType.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeTeamMemberOrder, Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "role" filledInOptionals.role (Encode.enum Github.Enum.TeamMemberRole.toString) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "members" optionalArgs object_ identity


{-| The HTTP path for the team' members
-}
membersResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
membersResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "membersResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for the team' members
-}
membersUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
membersUrl =
    Object.selectionForField "ScalarCodecs.Uri" "membersUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The name of the team.
-}
name : SelectionSet String Github.Object.Team
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The HTTP path creating a new team
-}
newTeamResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
newTeamResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "newTeamResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL creating a new team
-}
newTeamUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
newTeamUrl =
    Object.selectionForField "ScalarCodecs.Uri" "newTeamUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The organization that owns this team.
-}
organization : SelectionSet decodesTo Github.Object.Organization -> SelectionSet decodesTo Github.Object.Team
organization object_ =
    Object.selectionForCompositeField "organization" [] object_ identity


{-| The parent team of the team.
-}
parentTeam : SelectionSet decodesTo Github.Object.Team -> SelectionSet (Maybe decodesTo) Github.Object.Team
parentTeam object_ =
    Object.selectionForCompositeField "parentTeam" [] object_ (identity >> Decode.nullable)


{-| The level of privacy the team has.
-}
privacy : SelectionSet Github.Enum.TeamPrivacy.TeamPrivacy Github.Object.Team
privacy =
    Object.selectionForField "Enum.TeamPrivacy.TeamPrivacy" "privacy" [] Github.Enum.TeamPrivacy.decoder


type alias RepositoriesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument Github.InputObject.TeamRepositoryOrder
    , query : OptionalArgument String
    }


{-| A list of repositories this team has access to.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Order for the connection.
  - query - The search string to look for.

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamRepositoryConnection -> SelectionSet decodesTo Github.Object.Team
repositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent, query = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeTeamRepositoryOrder, Argument.optional "query" filledInOptionals.query Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "repositories" optionalArgs object_ identity


{-| The HTTP path for this team's repositories
-}
repositoriesResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
repositoriesResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "repositoriesResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this team's repositories
-}
repositoriesUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
repositoriesUrl =
    Object.selectionForField "ScalarCodecs.Uri" "repositoriesUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP path for this team
-}
resourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The slug corresponding to the team.
-}
slug : SelectionSet String Github.Object.Team
slug =
    Object.selectionForField "String" "slug" [] Decode.string


{-| The HTTP path for this team's teams
-}
teamsResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
teamsResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "teamsResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this team's teams
-}
teamsUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
teamsUrl =
    Object.selectionForField "ScalarCodecs.Uri" "teamsUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.Team
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this team
-}
url : SelectionSet Github.ScalarCodecs.Uri Github.Object.Team
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Team is adminable by the viewer.
-}
viewerCanAdminister : SelectionSet Bool Github.Object.Team
viewerCanAdminister =
    Object.selectionForField "Bool" "viewerCanAdminister" [] Decode.bool


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool Github.Object.Team
viewerCanSubscribe =
    Object.selectionForField "Bool" "viewerCanSubscribe" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet (Maybe Github.Enum.SubscriptionState.SubscriptionState) Github.Object.Team
viewerSubscription =
    Object.selectionForField "(Maybe Enum.SubscriptionState.SubscriptionState)" "viewerSubscription" [] (Github.Enum.SubscriptionState.decoder |> Decode.nullable)
