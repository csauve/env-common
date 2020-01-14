//https://stackoverflow.com/questions/15852122/hex-transparency-in-colors
const c = {
  transparent: "#00000000",
  black: "#0f0f0f",
  black_transparent: "#e60f0f0f",
  dark_gray: "#222222",
  gray: "#263e48",
  light_gray: "#666666",
  red_dark: "#880403",
  red: "#c82438",
  green: "#6bdba1",
  yellow: "#fdc198",
  blue: "#3da0bf",
  purple: "dd00dd",
  purple_dark: "#440044",
  magenta: "#db86ba",
  cyan: "#62cdcd",
  white: "#bad2d6",
  width_small: 4,
  width_normal: 12,
  font: "Fira Mono",
  font_icons: "FontAwesome",
  font_size: 11,
  font_size_term: 11,
  dpi: 100
};

console.log(JSON.stringify({
  ...c,
  content: {
    fg: c.white,
    bg: c.black,
    bg_transparent: c.black_transparent,
    bg_opacity: 0.90,
    faded: c.light_gray,
    good: c.green,
    bad: c.red,
    fg_urent: c.yellow,
    fg_focused: "#bf2f5e",
    accent: c.magenta,
    accent_faded: c.light_gray,
  },
  window: {
    fg: c.white,
    bg: c.black,
    bg_transparent: "#11111111",
    border: {
      focused: c.dark_gray,
      active: c.black,
      inactive: c.black,
      indicator: c.black,
      urgent: c.red
    },
  },
  notice: {
    border: {
      focused: c.red,
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
      focused: c.red,
      active: c.black,
      inactive: c.black,
      urgent: c.red,
    },
  },
}));
