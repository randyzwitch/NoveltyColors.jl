---

layout: minimal
title: Vega.jl - A Julia package for generating visualizations using Vega

---

# Code Example

Because NoveltyColors.jl is intended to be incorporated into other packages where color palettes are needed, the `ColorDict` dictionary is not exported (to avoid polluting the namespace). In order to retrieve an array of CSS hex code, use the pattern:
	`NoveltyColors.ColorDict["<palette>"]["<palettename>"]`.

{% highlight julia %}
julia> using NoveltyColors

julia> NoveltyColors.ColorDict["beyonce"]["4a"]
4-element Array{Any,1}:
 "#000000"
 "#1E46A2"
 "#FB323B"
 "#C5E137"
{% endhighlight %}


# Contributions

Contributions are absolutely welcome; however, please be sure that any color palette/package code is licensed under the terms of the [MIT "Expat" license](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/LICENSE.md) or more permissive.

To submit a contribution, submit a pull request where the data file has the same structure as [WesAnderson.json](https://github.com/randyzwitch/NoveltyColors.jl/blob/master/data/wesanderson.json): the file name represents what the color palette will be called, with the values in the text file as JSON where each key is a `AbstractString` and its value will be an `AbstractArray` of hex codes.
