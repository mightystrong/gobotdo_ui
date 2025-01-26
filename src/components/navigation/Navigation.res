@react.component
let make = () => {
  <nav className={Css.Navigation.container}>
    <a href={Routes.root} className={Css.Navigation.logo}>{`GoBotDo`->React.string}</a>
  </nav>
}
