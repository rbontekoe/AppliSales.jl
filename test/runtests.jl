using AppliSales
using Test

@testset "AppliSales.jl" begin
    orders = process()
    first_order = orders[1]
    second_order = orders[2]

    @test length(orders) == 3
    @test first_order.org.name == "Scrooge Investment Bank"
    @test first_order.contact_name == "Scrooge McDuck"

    @test length(second_order.students) == 2
    @test second_order.students[1] == "Mini Mouse"
end
