@module("clsx") external clsx: array<string> => string = "default"
@module("clsx") external clsxObject: Js.Dict.t<bool> => string = "default"
@module("clsx") external clsxMany: array<option<string>> => string = "default"

// Helper function to handle optional classes more elegantly
let cx = classes => {
  classes
  ->Belt.Array.keepMap(x => x)
  ->clsx
}

// Helper function to combine class names with conditions
let cond = (classes: array<(string, bool)>) => {
  classes
  ->Belt.Array.reduce(Js.Dict.empty(), (acc, (className, condition)) => {
    Js.Dict.set(acc, className, condition)
    acc
  })
  ->clsxObject
}
