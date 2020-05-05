include("../domain/domain.jl")

create_org(name::String, address::String, zip::String, city::String, country::String) =
    Organization(
        name::String,
        address::String,
        zip::String,
        city::String,
        country::String)

create_training(id::String, date::DateTime, days::Int64, name::String, price::Float64) =
    Training(id, date, days, name, price)::Training

create_order(org::Organization, training::Training, order_ref::String, contact_name::String, contact_email::String, students::Array{String,1}) =
    Order(org, training, order_ref, contact_name, contact_email, students)::Order
