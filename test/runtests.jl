using NoveltyColors
using Test

@testset "NoveltyColors" begin

    @testset "ColorDict structure" begin
        @test ColorDict isa Dict
        # One key per JSON file in data/
        @test haskey(ColorDict, "acw")
        @test haskey(ColorDict, "wesanderson")
        @test haskey(ColorDict, "beyonce")
        @test haskey(ColorDict, "michiyo")
        @test haskey(ColorDict, "visme")
        @test length(ColorDict) == 5
    end

    @testset "Palette counts" begin
        @test length(ColorDict["acw"])         == 25
        @test length(ColorDict["wesanderson"]) == 16
        @test length(ColorDict["michiyo"])     == 12
        @test length(ColorDict["visme"])       == 50
        @test length(ColorDict["beyonce"])      > 0
    end

    @testset "Known palette names" begin
        @test haskey(ColorDict["acw"], "OceanSunset")
        @test haskey(ColorDict["wesanderson"], "Zissou1")
        @test haskey(ColorDict["michiyo"], "Totoro1")
        @test haskey(ColorDict["visme"], "BlueSunset")
        @test haskey(ColorDict["beyonce"], "6a")
    end

    @testset "Color values are valid hex strings" begin
        hex_re = r"^#[0-9A-Fa-f]{6}$"
        for (source, palettes) in ColorDict
            for (name, colors) in palettes
                @test colors isa Vector
                @test length(colors) > 0
                for color in colors
                    @test occursin(hex_re, color)
                end
            end
        end
    end

end
