module NoveltyColors

export ColorDict
import JSON: parsefile

ColorDict = Dict{AbstractString,Any}()
for file in readdir(Pkg.dir("NoveltyColors", "data"))
    if file[end-4:end] == ".json"
        merge!(ColorDict, Dict{AbstractString,Any}(file[1:end-5] => (parsefile(Pkg.dir("NoveltyColors", "data", file)))))
    end
end

end # module
