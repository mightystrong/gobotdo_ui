@react.component
let make = (~id, ~children) => {
  let id = Js.Array.joinWith("__", [id, __MODULE__])

  <div id className={Css.Docs.Section.container}>
    {children}
  </div>
}

