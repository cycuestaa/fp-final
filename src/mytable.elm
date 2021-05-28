port module mytable exposing (maintable)

import Element exposing (..)
import Element.Background as Background


explain_ : Attribute msg
explain_ =
    explain Debug.todo
--    pointer


maintable =
    layout [ width fill, height fill ] <|
        row [ width fill, height fill, explain_ ]
            [ column [ width fill, height fill, spacing 1 ]
                [el [ width fill, height fill, scrollbarY ]  -- el はさむとスクロールバー出る
                <| table [ width fill, height fill, spacing 1, explain_ ]
                <| { data = List.repeat 50 "left"
                    , columns =
                        [ { header = el [ Background.color (rgb 0.9 0.9 0) ] <| text "table header of left"
                        , width = fill
                        , view = el [ padding 3 ] << text
                        }
                        ]
                }
                ]
            , table [ width fill, height fill, spacing 1, scrollbarY, explain_ ]
            <| { data = List.repeat 50 "right"
                , columns =
                    [ { header = el [ Background.color (rgb 0 0.9 0) ] <| text "table header of right"
                    , width = fill
                    , view = el [ padding 3 ] << text
                    }
                    ]
            }
            ]
