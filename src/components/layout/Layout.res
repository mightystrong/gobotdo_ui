@react.component
let default = (~children) => {
  <div className={Css.Layout.container}>
    <Navigation />
    {children}
  </div>
}
