module Models exposing (..)

import RemoteData exposing (WebData)


type alias Model =
    { players : WebData (List Player)
    , route : Route
    }


initialModel : Route -> Model
initialModel route =
    { players = RemoteData.Loading
    , route = route
    }


type Route
    = PlayersRoute
    | PlayerRoute PlayerId
    | NotFoundRoute


type alias PlayerId =
    String


type alias Player =
    { id : PlayerId
    , name : String
    , level : Int
    }
