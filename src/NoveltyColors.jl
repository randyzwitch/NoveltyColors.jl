module NoveltyColors

export ColorDict
import JSON: parsefile

directory = joinpath(@__DIR__, "..", "data")

ColorDict = Dict{AbstractString,Any}()
for file in readdir(directory)
    if endswith(file, ".json")
        merge!(ColorDict, Dict{AbstractString,Any}(splitext(file)[1] => (parsefile(joinpath(directory, file)))))
    end
end

end # module

