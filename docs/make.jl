using Documenter, AppliSales

makedocs(;
    modules=[AppliSales],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/rbontekoe/AppliSales.jl/blob/{commit}{path}#L{line}",
    sitename="AppliSales.jl",
    authors="Rob Bontekoe",
    assets=String[],
)

deploydocs(;
    repo="github.com/rbontekoe/AppliSales.jl",
)
