using BridgeCalcsUS
using Documenter

DocMeta.setdocmeta!(BridgeCalcsUS, :DocTestSetup, :(using BridgeCalcsUS); recursive=true)

makedocs(;
    modules=[BridgeCalcsUS],
    authors="Cole Miller",
    sitename="BridgeCalcsUS.jl",
    format=Documenter.HTML(;
        canonical="https://co1emi11er2.github.io/BridgeCalcsUS.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/co1emi11er2/BridgeCalcsUS.jl",
    devbranch="main",
)
