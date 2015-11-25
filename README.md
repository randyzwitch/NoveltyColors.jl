# NoveltyColors

[![Build Status](https://travis-ci.org/randyzwitch/NoveltyColors.jl.svg?branch=master)](https://travis-ci.org/randyzwitch/NoveltyColors.jl)

This package is intended to be a lightweight package for non-standard color palettes. Unlike [Color.jl](https://github.com/JuliaLang/Color.jl), there is not (necessarily) any theoretical underpinnings to these palettes. Color palettes provided within this package may represent Internet memes, generalized color palettes seen in advertising or on television, or just generally aesthetically pleasing colors.

If you are visualizing data for presentation or publication, you should validate that any of these color schemes provide acceptable contrast when printed in Black & White, are appropriate for colorblind individuals and any other considerations.

## Palettes

Wes Anderson: [Palette](https://github.com/karthik/wesanderson/blob/master/R/colors.R) copied verbatim from [wesanderson R package](https://github.com/karthik/wesanderson) by Karthik Ram (converted to JSON).

Beyonce: [Palette](https://gist.github.com/dill/fb75131e618c52564fc9) copied from [beyonce R package](https://github.com/dill/beyonce) by DL Miller, based on the collection shown at [http://beyoncepalettes.tumblr.com/](http://beyoncepalettes.tumblr.com/). The Beyonce palettes are labeled based on number of colors in the palette, then sorted lexographically, a deviation from the ordering in the R package.

## Contributions

Contributions are absolutely welcome; however, please be sure that any color palette/package code is licensed under the terms of the [MIT "Expat" license](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/LICENSE.md) or more permissive.

## Examples

The color palettes are stored in a plain Julia `Dict` type.