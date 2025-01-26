@react.component
let default = () => {
  let id = __MODULE__

  <div id>
    <Docs_Header id title={`Fonts`}>
      <P id>
        {`This is the fonts page`->React.string}
      </P>
    </Docs_Header>

    <P.Subtitle id title={`Examples`} />

    <Docs_Section id>
      <P id>
        {`This is the fonts page`->React.string}
      </P>
    </Docs_Section>
  </div>
}
