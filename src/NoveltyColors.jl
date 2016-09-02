module NoveltyColors

export ColorDict
import JSON: parsefile

directory = dirname(@__FILE__) * "/../data/"

ColorDict = Dict{AbstractString,Any}()
for file in readdir(directory)
    if file[end-4:end] == ".json"
        merge!(ColorDict, Dict{AbstractString,Any}(file[1:end-5] => (parsefile(directory * file))))
    end
end

end # module

