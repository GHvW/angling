module Vec2 exposing (Vec2, dot, lerp, limit, magnitude, minus, normalize, plus, scaleBy)


type alias Vec2 =
    { x : Float, y : Float }


divideBy : Float -> Vec2 -> Vec2
divideBy scalar this =
    { x = this.x / scalar, y = this.y / scalar }


dot : Vec2 -> Vec2 -> Float
dot other this =
    (this.x * other.x) + (this.y * other.y)


lerp : Float -> Vec2 -> Vec2 -> Vec2
lerp amount towards this =
    this
        |> minus towards
        |> scaleBy amount
        |> plus this


limit : Float -> Float -> Vec2 -> Vec2
limit max thisMagnitude this =
    if thisMagnitude > max then
        this
            |> normalize thisMagnitude
            |> scaleBy max

    else
        this


magnitude : Vec2 -> Float
magnitude this =
    sqrt ((this.x ^ 2) + (this.y ^ 2))


minus : Vec2 -> Vec2 -> Vec2
minus other this =
    { x = this.x - other.x, y = this.y - other.y }


normalize : Float -> Vec2 -> Vec2
normalize thisMagnitude this =
    divideBy thisMagnitude this


plus : Vec2 -> Vec2 -> Vec2
plus other this =
    { x = this.x + other.x, y = this.y + other.y }


scaleBy : Float -> Vec2 -> Vec2
scaleBy scalar this =
    { x = this.x * scalar, y = this.y * scalar }
