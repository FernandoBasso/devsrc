import { leftpad } from "./leftpad";

describe("leftpad()", () => {
  it("does nothing len param is zero", () => {
    expect(leftpad("", 0, "•")).toEqual("");
    expect(leftpad("z", 0, "•")).toEqual("z");
    expect(leftpad("jedi", 0, "•")).toEqual("jedi");
  });

  it("does nothing when len param matches input length", () => {
    expect(leftpad("z", 1, " ")).toEqual("z");
    expect(leftpad("hello", 5, "hello")).toEqual("hello");
  });

  it("pad when only one extra padding char is needed", () => {
    expect(leftpad("z", 2)).toEqual(" z");
    expect(leftpad("z", 2, "y")).toEqual("yz");
  });

  it("pads nothing when len is >= string length", () => {
    expect(leftpad("foo", 3, " ")).toEqual("foo");
  });

  it("pads with zeroes", () => {
    expect(leftpad("42.99", 8, 0)).toEqual("00042.99");
  });

  it("works with numeric input", () => {
    expect(leftpad(42.99, 8, " ")).toEqual("   42.99");
  });

  it("works with multibyte chars", () => {
    expect(leftpad("✔", 4, " ")).toEqual("   ✔");
  });
});
