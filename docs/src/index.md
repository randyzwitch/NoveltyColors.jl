# NoveltyColors.jl

[![CI](https://github.com/randyzwitch/NoveltyColors.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/randyzwitch/NoveltyColors.jl/actions/workflows/CI.yml)

This package is a lightweight collection of non-standard color palettes for Julia. Unlike
[Colors.jl](https://github.com/JuliaGraphics/Colors.jl), there is not necessarily any
theoretical underpinning to these palettes. Color palettes may represent Internet memes,
generalized color palettes seen in advertising or on television/movies, or simply
aesthetically pleasing colors.

> **Note:** If you are visualizing data for presentation or publication, validate that any
> color scheme provides acceptable contrast when printed in black and white, and is
> appropriate for colorblind individuals.

## Palettes

The following palette sources are included:

| Source | Description |
|--------|-------------|
| [Adobe Color Wheel](palettes/acw.md) | Top palettes from Adobe Color |
| [Beyoncé](palettes/beyonce.md) | Palettes inspired by Beyoncé albums |
| [Michiyo](palettes/michiyo.md) | Michiyo color palettes |
| [Visme](palettes/visme.md) | Visme design palettes |
| [Wes Anderson](palettes/wesanderson.md) | Film palettes from the wesanderson R package |

## Contributions

Contributions are welcome! Please ensure any palette data is licensed under
[MIT "Expat"](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/LICENSE.md)
or more permissive terms.

New palettes should be added as a JSON file in the `data/` directory matching the structure
of [wesanderson.json](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/data/wesanderson.json):
the filename becomes the palette source name, with each key being a palette name and its
value an array of CSS hex color codes.