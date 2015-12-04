# NoveltyColors

[![Build Status](https://travis-ci.org/randyzwitch/NoveltyColors.jl.svg?branch=master)](https://travis-ci.org/randyzwitch/NoveltyColors.jl)

This package is intended to be a lightweight package for non-standard color palettes. Unlike [Color.jl](https://github.com/JuliaLang/Color.jl), there is not (necessarily) any theoretical underpinnings to these palettes. Color palettes provided within this package may represent Internet memes, generalized color palettes seen in advertising or on television/movies, or just aesthetically pleasing colors.

If you are visualizing data for presentation or publication, you should validate that any of these color schemes provide acceptable contrast when printed in Black & White, are appropriate for colorblind individuals and any other considerations.

The color palettes are stored and exported in a plain Julia `Dict` type, named `ColorDict`

## Contributions

Contributions are absolutely welcome; however, please be sure that any color palette/package code is licensed under the terms of the [MIT "Expat" license](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/LICENSE.md) or more permissive.

To submit a contribution, submit a pull request where the data file has the same structure as [WesAnderson.json](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/data/wesanderson.json): the file name represents what the color palette will be called, with the values in the text file as JSON where each key is a `AbstractString` and its value will be an `AbstractArray` of hex codes.

## Palettes

### Wes Anderson:
[Palette](https://github.com/karthik/wesanderson/blob/master/R/colors.R) copied verbatim from [wesanderson R package](https://github.com/karthik/wesanderson) by Karthik Ram (converted to JSON).

|Number of Colors | Name  | Colors|
|---|---|---|
|7|BottleRocket1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/BottleRocket1.png)|
|5|BottleRocket2|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/BottleRocket2.png)|
|5|Cavalcanti1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Cavalcanti1.png)|
|4|Chevalier1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Chevalier1.png)|
|5|Darjeeling1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Darjeeling1.png)|
|5|Darjeeling2|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Darjeeling2.png)|
|5|FantasticFox1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/FantasticFox1.png)|
|4|GrandBudapest1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/GrandBudapest1.png)|
|4|GrandBudapest2|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/GrandBudapest2.png)|
|4|Moonrise1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Moonrise1.png)|
|4|Moonrise2|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Moonrise2.png)|
|5|Moonrise3|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Moonrise3.png)|
|4|Royal1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Royal1.png)|
|5|Royal2|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Royal2.png)|
|5|Rushmore1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Rushmore1.png)|
|5|Zissou1|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/wesanderson/Zissou1.png)|

### Beyonce:
[Palette](https://gist.github.com/dill/fb75131e618c52564fc9) copied from [beyonce R package](https://github.com/dill/beyonce) by DL Miller, based on the collection shown at [http://beyoncepalettes.tumblr.com/](http://beyoncepalettes.tumblr.com/). The Beyonce palettes are labeled based on number of colors in the palette, then sorted lexographically, a deviation from the ordering in the R package.

|Number of Colors | Name  | Colors|
|---|---|---|
|4|4a|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/4/4a.png)|
|4|4b|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/4/4b.png)|
|5|5a|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/5/5a.png)|
|5|5b|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/5/5b.png)|
|5|5c|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/5/5c.png)|
|5|5d|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/5/5d.png)|
|5|5e|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/5/5e.png)|
|5|5f|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/5/5f.png)|
|5|5g|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/5/5g.png)|
|6|6a|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6a.png)|
|6|6aa|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6aa.png)|
|6|6aaa|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6aaa.png)|
|6|6b|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6b.png)|
|6|6bb|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6bb.png)|
|6|6bbb|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6bbb.png)|
|6|6c|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6c.png)|
|6|6cc|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6cc.png)|
|6|6ccc|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6ccc.png)|
|6|6d|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6d.png)|
|6|6dd|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6dd.png)|
|6|6ddd|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6ddd.png)|
|6|6e|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6e.png)|
|6|6ee|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6ee.png)|
|6|6eee|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6eee.png)|
|6|6f|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6f.png)|
|6|6ff|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6ff.png)|
|6|6fff|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6fff.png)|
|6|6g|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6g.png)|
|6|6gg|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6gg.png)|
|6|6ggg|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6ggg.png)|
|6|6h|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6h.png)|
|6|6hh|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6hh.png)|
|6|6hhh|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6hhh.png)|
|6|6i|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6i.png)|
|6|6ii|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6ii.png)|
|6|6iii|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6iii.png)|
|6|6j|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6j.png)|
|6|6jj|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6jj.png)|
|6|6jjj|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6jjj.png)|
|6|6k|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6k.png)|
|6|6kk|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6kk.png)|
|6|6kkk|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6kkk.png)|
|6|6l|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6l.png)|
|6|6ll|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6ll.png)|
|6|6lll|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6lll.png)|
|6|6m|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6m.png)|
|6|6mm|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6mm.png)|
|6|6mmm|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6mmm.png)|
|6|6n|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6n.png)|
|6|6nn|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6nn.png)|
|6|6nnn|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6nnn.png)|
|6|6o|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6o.png)|
|6|6oo|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6oo.png)|
|6|6p|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6p.png)|
|6|6pp|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6pp.png)|
|6|6q|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6q.png)|
|6|6qq|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6qq.png)|
|6|6r|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6r.png)|
|6|6rr|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6rr.png)|
|6|6s|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6s.png)|
|6|6ss|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6ss.png)|
|6|6t|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6t.png)|
|6|6tt|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6tt.png)|
|6|6u|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6u.png)|
|6|6uu|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6uu.png)|
|6|6v|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6v.png)|
|6|6vv|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6vv.png)|
|6|6w|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6w.png)|
|6|6ww|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6ww.png)|
|6|6x|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6x.png)|
|6|6xx|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6xx.png)|
|6|6y|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6y.png)|
|6|6yy|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6yy.png)|
|6|6z|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6z.png)|
|6|6zz|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/6/6zz.png)|
|7|7a|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/7/7a.png)|
|7|7b|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/7/7b.png)|
|7|7c|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/7/7c.png)|
|7|7d|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/7/7d.png)|
|8|8a|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/8/8a.png)|
|8|8b|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/8/8b.png)|
|9|9a|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/9/9a.png)|
|9|9b|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/9/9b.png)|
|9|9c|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/9/9c.png)|
|10|10a|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/10/10a.png)|
|10|10b|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/10/10b.png)|
|10|10c|![](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/images/beyonce/10/10c.png)|