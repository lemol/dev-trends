module Page.DeveloperList exposing (..)

import Data.Developer exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Region as Region
import Html
import Html.Attributes exposing (src, style)
import RemoteData exposing (RemoteData(..))
import Utils.Button exposing (githubTextLink)
import Utils.SelectMenu as SelectMenu



-- MODEL


type alias Model =
    { --
      -- PAGE MODEL
      sort : Maybe Sort
    , language : Maybe Language

    -- REMOTE DATA
    , developers : DeveloperListWebData
    , languages : LanguageListWebData

    -- COMPONENTS DATA
    , sortSelectMenu : SelectMenu.State Sort
    , languageSelectMenu : SelectMenu.State Language
    }


init : ( Model, Cmd Msg )
init =
    ( { sort = Nothing
      , language = Nothing
      , developers = NotAsked
      , languages = NotAsked
      , sortSelectMenu = SelectMenu.init (Just BestMatch)
      , languageSelectMenu = SelectMenu.init Nothing
      }
    , Cmd.batch
        [ fetchDeveloperList Nothing Nothing FetchDeveloperListResponse
        , fetchLanguageList FetchLanguageListResponse
        ]
    )



-- MESSAGE


type Msg
    = ChangeSort (Maybe Sort)
    | ChangeLanguage (Maybe Language)
    | FetchDeveloperList
    | FetchDeveloperListResponse DeveloperListWebData
    | FetchLanguageListResponse LanguageListWebData
    | SortSelectMsg (SelectMenu.Msg Sort)
    | LanguageSelectMsg (SelectMenu.Msg Language)



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangeSort newSort ->
            update FetchDeveloperList { model | sort = newSort }

        ChangeLanguage newLanguage ->
            update FetchDeveloperList { model | language = newLanguage }

        FetchDeveloperList ->
            ( model
              -- Set Loading state??
            , fetchDeveloperList model.sort model.language FetchDeveloperListResponse
            )

        FetchDeveloperListResponse response ->
            ( { model | developers = response }
            , Cmd.none
            )

        FetchLanguageListResponse response ->
            ( { model | languages = response }
            , Cmd.none
            )

        SortSelectMsg subMsg ->
            SelectMenu.updateState
                { changeSelected = Just ChangeSort
                , changeFilter = Nothing
                , getter = .sortSelectMenu
                , setter = \m s -> { m | sortSelectMenu = s }
                , update = update
                }
                subMsg
                model

        LanguageSelectMsg subMsg ->
            SelectMenu.updateState
                { changeSelected = Just ChangeLanguage
                , changeFilter = Nothing
                , getter = .languageSelectMenu
                , setter = \m s -> { m | languageSelectMenu = s }
                , update = update
                }
                subMsg
                model



-- VIEW


headerTitleView : Element msg
headerTitleView =
    el
        [ width fill
        , height <| px 174
        , Background.color <| rgb255 250 251 252
        , Border.color <| rgb255 225 228 232
        , Border.widthXY 0 1
        ]
    <|
        column
            [ centerX
            , centerY
            ]
            [ el
                [ centerX
                , padding 12
                , Font.size 40
                , Font.color <| rgb255 6 41 46
                , htmlAttribute <|
                    style "font-weight" "300"
                ]
                (text "Angolans Developers")
            , el
                [ centerX
                , Font.size 16
                , Font.color <| rgb255 88 96 105
                ]
                (text "These are the Angolans developers building the hot tools on Github.")
            ]


mainSectionView : Model -> Element Msg
mainSectionView model =
    let
        top =
            el
                [ width fill
                , height <| px 64
                , Background.color <| rgb255 246 248 250
                , Border.color <| rgb255 209 213 218
                , Border.widthEach { bottom = 1, top = 0, left = 0, right = 0 }
                ]
            <|
                row
                    [ centerY
                    , width fill
                    , padding 16
                    ]
                    [ row
                        [ height <| px 34
                        , Font.size 14
                        , Font.semiBold
                        ]
                        [ link
                            [ centerX
                            , centerY
                            , height fill
                            , width fill
                            , paddingXY 14 6
                            , Font.color <| rgb255 88 96 105
                            , Border.color <| rgb255 225 228 232
                            , Border.widthEach { top = 1, bottom = 1, left = 1, right = 0 }
                            , Border.roundEach { topLeft = 3, bottomLeft = 3, topRight = 0, bottomRight = 0 }
                            ]
                            { url = "#/Repositories", label = el [ centerY ] (text "Repositories") }
                        , link
                            [ centerX
                            , centerY
                            , height fill
                            , width fill
                            , paddingXY 14 6
                            , Font.color <| rgb255 255 255 255
                            , Border.color <| rgb255 225 228 232
                            , Border.widthEach { top = 1, bottom = 1, left = 0, right = 1 }
                            , Border.roundEach { topLeft = 0, bottomLeft = 0, topRight = 3, bottomRight = 3 }
                            , Background.color <| rgb255 3 102 214
                            ]
                            { url = "#/Developers", label = el [ centerY ] (text "Developers") }
                        ]
                    , row
                        [ alignRight, spacing 32 ]
                        [ SelectMenu.view
                            []
                            { title = "Language:"
                            , description = "Select a language"
                            , defaultText = "Any"
                            , options = languageValues model.languages
                            , toString = languageToString
                            , showFilter = True
                            , model = model.languageSelectMenu
                            , toMsg = LanguageSelectMsg
                            }
                        , SelectMenu.view
                            []
                            { title = "Sort:"
                            , description = "Sort options"
                            , defaultText = "Select"
                            , options = sortValues
                            , toString = sortToString
                            , showFilter = False
                            , model = model.sortSelectMenu
                            , toMsg = SortSelectMsg
                            }
                        ]
                    ]

        body =
            case model.developers of
                Success [] ->
                    emptyListView model.language

                Success developers ->
                    developerListView developers

                Failure _ ->
                    text "Something wrong is going on... :("

                Loading ->
                    text "Loading..."

                NotAsked ->
                    none
    in
    el
        [ width fill
        , paddingXY 42 40
        ]
    <|
        column
            [ centerX
            , width (fill |> maximum 1012)
            , Border.color <| rgb255 209 213 218
            , Border.width 1
            , Border.rounded 3
            ]
            [ top
            , body
            ]


emptyListView : Maybe Language -> Element msg
emptyListView language =
    let
        lang =
            Maybe.withDefault "Any Language" language
    in
    textColumn
        [ centerX
        , centerY
        , padding 32
        , height <| px 146
        , spacing 4
        , Font.color <| rgb255 0x24 0x29 0x2E
        ]
        [ paragraph
            [ Region.heading 3
            , Font.center
            , Font.bold
            , Font.size 20
            ]
            [ text <| "It looks like there is not any Angolan developer for " ++ lang ++ "." ]
        , paragraph
            [ centerX
            , Font.size 14
            , Font.center
            ]
            [ row
                []
                [ text <| "If you "
                , link
                    [ Font.color <| rgb255 3 102 214 ]
                    { url = "https://github.com/new"
                    , label =
                        row
                            []
                            [ text "you create an "
                            , el [ Font.bold ] (text lang)
                            , text " repository"
                            ]
                    }
                , text <| ", you can really own the place."
                ]
            ]
        , paragraph
            [ Font.center
            , Font.size 14
            ]
            [ el [ centerX ] <| text "We’d even let it slide if you started calling yourself the mayor." ]
        ]


developerListView : List Developer -> Element Msg
developerListView =
    List.indexedMap developerListItemView >> column [ width fill ]


developerListItemView : Int -> Developer -> Element Msg
developerListItemView count developer =
    row
        [ width fill
        , padding 16
        , Border.color <| rgb255 209 213 218
        , Border.widthEach
            { bottom = 0
            , top =
                if count == 0 then
                    0

                else
                    1
            , left = 0
            , right = 0
            }
        ]
        [ row
            [ spacing 12
            , alignTop
            , width (fill |> minimum 300)
            ]
            [ el
                [ Font.size 32
                , Font.color <| rgb255 88 96 105
                ]
                (text <| String.fromInt (count + 1))
            , link
                []
                { url = "#/Users/" ++ developer.login
                , label =
                    row
                        [ width fill
                        , spacing 12
                        ]
                        [ el [] <|
                            html <|
                                Html.img
                                    [ style "width" "48px"
                                    , style "height" "52px"
                                    , style "border-radius" "3px"
                                    , style "border-width" "1px"
                                    , src developer.avatar
                                    ]
                                    []
                        , column
                            [ spacing 4 ]
                            [ el
                                [ Font.size 20
                                , Font.bold
                                , Font.color <| rgb255 3 102 214
                                ]
                                (text developer.name)
                            , el
                                [ Font.size 16
                                , Font.color <| rgb255 88 96 105
                                , mouseOver [ Font.color <| rgb255 3 102 214 ]
                                ]
                                (text developer.login)
                            ]
                        ]
                }
            ]
        , popularRepoView developer
        , row
            [ width fill
            ]
            [ el [ alignRight ] (githubTextLink developer.htmlUrl "Profile") ]
        ]


popularRepoView : Developer -> Element msg
popularRepoView developer =
    case developer.popularRepo of
        Nothing ->
            Element.none

        Just popularRepo ->
            column
                [ width (fill |> maximum 300)
                , spacingXY 0 9
                ]
                [ el
                    [ Font.size 16
                    , Font.variant Font.smallCaps
                    , Font.color <| rgb255 88 96 105
                    ]
                    (text "popular repo")
                , link
                    [ Font.size 16
                    , Font.color <| rgb255 3 102 214
                    , Font.semiBold
                    ]
                    { url = "#", label = text popularRepo.name }
                , paragraph
                    [ Font.size 12
                    , Font.color <| rgb255 88 96 105
                    ]
                    [ text popularRepo.description ]
                ]
