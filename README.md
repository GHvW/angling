# angling
Simple Vector Operations


The API is set up with piping in mind

For example, if you want the operation `{ x = 10, y = 20 } - { x = 5, y = 10 }` with `Vec2.minus` it should look like this:

```elm
Vec2.minus { x = 5, y = 10 } { x = 10, y = 20 }
```

with the forward pipe, it would look like this:

```elm
{ x = 10, y = 20 } |> Vec2.minus { x = 5, y = 10 }
```

