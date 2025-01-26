@react.component
let make = (
  ~id,
  ~className="",
  ~color=Css.Text.Black,
  ~weight=Css.Font.Medium,
  ~size=Css.Text.XXL,
  ~children
) => {
  let className = clsx([
    color->Css.Text.colorToClass,
    size->Css.Text.sizeToClass,
    weight->Css.Font.weightToClass,
    className
  ])

  let id = Js.Array.joinWith("__", [id, __MODULE__])

  <h1 id className> {children} </h1>
}

