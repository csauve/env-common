const c = {
  black: "#181818",
  dark_gray: "#2a2a2a",
  gray: "#444444",
  light_gray: "#666666",
  // black_bright: "#767676",
  // red_dark: "#440124",
  red: "#e1311c",
  // green_dark: "#17794d",
  green: "#74dc90",
  // yellow_dark: "#792b17",
  yellow: "#fdc198",
  // blue_dark: "#2e3c49",
  blue: "#3da0bf",
  // magenta_dark: "#793d71",
  magenta: "#db86ba",
  cyan_dark: "#17838c",
  cyan: "#62cdcd",
  // white_dark: "#aaaaaa",
  white: "#f1fcf9",
  transparent: "#00000000"
};

console.log(JSON.stringify({
  ...c,
  content: {
    fg: c.white,
    bg: c.black,
    faded: c.light_gray,
    good: c.green,
    bad: c.red,
    accent: c.magenta,
    accent_faded: c.light_gray,
  },
  window: {
    fg: c.white,
    bg: c.black,
    border: {
      focused: c.cyan_dark,
      active: c.dark_gray,
      inactive: c.dark_gray,
      indicator: c.dark_gray,
      urgent: c.red
    },
  },
  notice: {
    border: {
      focused: c.cyan_dark,
      active: c.black,
      inactive: c.black,
      urgent: c.red,
    },
    fg: {
      focused: c.black,
      active: c.light_gray,
      inactive: c.light_gray,
      urgent: c.black,
    },
    bg: {
      focused: c.cyan_dark,
      active: c.black,
      inactive: c.black,
      urgent: c.red,
    },
  },
}));
