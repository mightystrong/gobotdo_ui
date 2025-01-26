@react.component
let make = (~id, ~title, ~children) => {
  let id = Js.Array.joinWith("__", [id, __MODULE__])

  <div id className={Css.Docs.Header.container}>
    <H1 id> {title->React.string} </H1>
    {children}
  </div>
}
