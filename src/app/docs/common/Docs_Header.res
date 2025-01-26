@react.component
let make = (~id, ~title, ~children) => {
  <div id={Js.Array.joinWith("__", [id, __MODULE__])} className={Css.Docs.Header.container}>
    <H1 parentModule={__MODULE__}> {title->React.string} </H1>
    {children}
  </div>
}
