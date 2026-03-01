module Helper exposing (..)

import Html
import Html.Attributes


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map transformador grades


transformador : Float -> GradeStatus
transformador calificacion =
    if calificacion >= 7 then
        Approved

    else if calificacion >= 0 then
        Failed

    else
        Pending


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction domain =
    case domain of
        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction uno =
    List.map airplaneScheduleAction uno
