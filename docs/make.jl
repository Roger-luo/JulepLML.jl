using Documenter
using 
using DocThemeIndigo

indigo = DocThemeIndigo.install(Configurations)

makedocs(;
    modules = [],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical="https://.github.io/.jl",
        assets=String[indigo],
    ),
    pages = [
        "Home" => "index.md",
    ],
    repo = "https://github.com//.jl",
    sitename = ".jl",
)

deploydocs(; repo = "github.com//.jl")
