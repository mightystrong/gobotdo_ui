@react.component
let make = (
  ~id=?,
  ~className="",
  ~color=Css.Text.Black,
  ~weight=Css.Font.Medium,
  ~size=Css.Text.XXL,
  ~parentModule=?,
  ~children
) => {
  let className = clsx([
    color->Css.Text.colorToClass,
    size->Css.Text.sizeToClass,
    weight->Css.Font.weightToClass,
    className
  ])

  let original = <h1 ?id className> {children} </h1>

  let dataModule = switch parentModule {
    | Some(x) => Js.Array.joinWith("__", [x, __MODULE__])
    | None => __MODULE__
  }

  React.cloneElement(original, {"data-module": dataModule})
}

