export function leftpad(inp, len, chr = " ") {
  let i = 0;

  str = String(inp);
  qty = len - str.length;

  while (i++ < qty)
    str = chr + str;

  return str;
}
