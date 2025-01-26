let thin = "font-thin"
let extralight = "font-extralight"
let light = "font-light"
let normal = "font-normal"
let medium = "font-medium"
let semibold = "font-semibold"
let bold = "font-bold"
let extrabold = "font-extrabold"
let black = "font-black"

type weight =
  | Thin
  | Extralight
  | Light
  | Normal
  | Medium
  | Semibold
  | Bold
  | Extrabold
  | Black

let weightToClass = weight => {
  switch (weight) {
  | Thin => thin
  | Extralight => extralight
  | Light => light
  | Normal => normal
  | Medium => medium
  | Semibold => semibold
  | Bold => bold
  | Extrabold => extrabold
  | Black => black
  }
}
