let lightGray = "text-gray-400"
let gray = "text-gray-500"
let blue = "text-blue-500"
let red = "text-red-500"
let teal = "text-teal-500"
let yellow = "text-yellow-500"
let purple = "text-purple-500"
let black = "text-black"
let xs = "text-xs"
let sm = "text-sm"
let base = "text-base"
let lg = "text-lg"
let xl = "text-xl"
let xxl = "text-2xl"
let xxxl = "text-3xl"

type color =
  | LightGray
  | Gray
  | Blue
  | Red
  | Teal
  | Yellow
  | Purple
  | Black

let colorToClass = color => {
  switch (color) {
  | LightGray => lightGray
  | Gray => gray
  | Blue => blue
  | Red => red
  | Teal => teal
  | Yellow => yellow
  | Purple => purple
  | Black => black
  }
}

type size =
  | XS
  | SM
  | Base
  | LG
  | XL
  | XXL
  | XXXL

let sizeToClass = size => {
  switch (size) {
  | XS => xs
  | SM => sm
  | Base => base
  | LG => lg
  | XL => xl
  | XXL => xxl
  | XXXL => xxxl
  }
}
