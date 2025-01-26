// Default
@react.component
let make = (~id, ~className="", ~color=Css.Text.Gray, ~size=Css.Text.Base, ~children) => {
  let className = clsx([
    color->Css.Text.colorToClass,
    size->Css.Text.sizeToClass,
    className
  ])

  let id = Js.Array.joinWith("__", [id, __MODULE__])

  <p id className> {children} </p>
}

module Subtitle = {
  @react.component
  let make = (~id, ~title, ~className="", ~color=Css.Text.LightGray, ~size=Css.Text.XS) => {
    let className = clsx([
      color->Css.Text.colorToClass,
      size->Css.Text.sizeToClass,
      "uppercase",
      className
    ])

    let id = Js.Array.joinWith("__", [id, `${__MODULE__}.Subtitle`])

    <p id className> {title->React.string} </p>
  }
}

