//https://stackoverflow.com/questions/15852122/hex-transparency-in-colors
const c = {
  transparent: "#00000000",
  black: "#0f111e",
  black_transparent: "#e60f111e",
  dark_gray: "#111926",
  gray: "#263e48",
  light_gray: "#666666",
  red: "#c82438",
  green: "#6bdba1",
  yellow: "#fdc198",
  blue: "#3da0bf",
  magenta: "#db86ba",
  cyan: "#62cdcd",
  white: "#bad2d6",
  width_small: 4,
  width_normal: 12,
  font: "Mononoki",
  font_icons: "FontAwesome",
  font_size: 14,
  dpi: 80
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
    fg_focused: c.red,
    accent: c.magenta,
    accent_faded: c.light_gray,
  },
  window: {
    fg: c.white,
    bg: c.black,
    border: {
      focused: c.red,
      active: c.dark_gray,
      inactive: c.dark_gray,
      indicator: c.dark_gray,
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
