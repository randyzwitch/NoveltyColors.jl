# Getting Started

## Installation

```julia
using Pkg
Pkg.add("NoveltyColors")
```

## Usage

NoveltyColors exports a single `Dict`, `ColorDict`, into the global namespace. The
dictionary is keyed first by palette source, then by palette name:

```julia
using NoveltyColors

# List all palette sources
keys(ColorDict)

# List all palettes within a source
keys(ColorDict["wesanderson"])

# Retrieve a specific palette as a Vector of CSS hex strings
ColorDict["wesanderson"]["Zissou1"]
# 5-element Vector{Any}:
#  "#3B9AB2"
#  "#78B7C5"
#  "#EBCC2A"
#  "#E1AF00"
#  "#F21A00"
```

## Using with Plots.jl

You can pass the hex color vectors directly to any plotting library that accepts CSS colors:

```julia
using NoveltyColors, Plots

colors = ColorDict["wesanderson"]["GrandBudapest1"]
bar(1:length(colors), fill(1, length(colors)), color = colors, legend = false)
```

## Using with Makie.jl

```julia
using NoveltyColors, CairoMakie

colors = ColorDict["wesanderson"]["Zissou1"]
fig = Figure()
ax = Axis(fig[1, 1])
for (i, c) in enumerate(colors)
    barplot!(ax, [i], [1], color = c)
end
fig
```