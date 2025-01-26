@react.component
let make = () => {
  <nav id={__MODULE__} className={Css.Navigation.container}>
    <div className={Css.Navigation.inner}>
      <a href={Routes.root} className={Css.Navigation.logo}>
        {`GoBotDo`->React.string}
      </a>
    </div>
  </nav>
}
