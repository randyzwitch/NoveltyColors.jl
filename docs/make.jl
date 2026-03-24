using Documenter
using JSON

# Generate palette pages from JSON data files
palette_src = joinpath(@__DIR__, "src", "palettes")
mkpath(palette_src)

data_dir = joinpath(@__DIR__, "..", "data")

palette_label_map = Dict(
    "acw"          => "Adobe Color Wheel",
    "beyonce"      => "Beyoncé",
    "michiyo"      => "Michiyo",
    "visme"        => "Visme",
    "wesanderson"  => "Wes Anderson",
)

palette_pages = Pair{String,String}[]

for file in sort(readdir(data_dir))
    endswith(file, ".json") || continue
    name = splitext(file)[1]
    data = JSON.parsefile(joinpath(data_dir, file))
    label = get(palette_label_map, name, titlecase(name))

    io = IOBuffer()
    println(io, "# $label\n")

    for (palette_name, colors) in sort(collect(data))
        println(io, "## $palette_name\n")

        # Inline color swatches via raw HTML
        println(io, "```@raw html")
        println(io, "<div style=\"display:flex;flex-wrap:wrap;gap:6px;margin-bottom:0.5em\">")
        for color in colors
            println(io, "  <div style=\"display:flex;flex-direction:column;align-items:center\">")
            println(io, "    <div style=\"width:60px;height:40px;background:$(color);border:1px solid #ccc;border-radius:4px\"></div>")
            println(io, "    <code style=\"font-size:0.75em\">$(color)</code>")
            println(io, "  </div>")
        end
        println(io, "</div>")
        println(io, "```\n")
    end

    page_file = joinpath(palette_src, "$name.md")
    write(page_file, String(take!(io)))
    push!(palette_pages, label => "palettes/$name.md")
end

makedocs(
    sitename = "NoveltyColors.jl",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
    ),
    pages = [
        "Home"            => "index.md",
        "Getting Started" => "getting_started.md",
        "Palettes"        => palette_pages,
    ],
)

deploydocs(
    repo = "github.com/randyzwitch/NoveltyColors.jl.git",
    devbranch = "master",
)