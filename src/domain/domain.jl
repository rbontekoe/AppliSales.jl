# domain.jl

create_key(name::String) = string(hash(name * string(time())))

struct Organization
    id::String
    name::String
    address::String
    zip::String
    city::String
    country::String
    # constructors
    Organization(name, address, zip, city, country) = new(create_key(name), name, address, zip, city, country)
end

struct Training
    id::String
    date::DateTime
    days::Int64
    name::String
    price::Float64
end

struct Order
    id::String
    org::Organization
    training::Training
    order_ref::String
    contact_name::String
    contact_email::String
    students::Array{String,1}
    # constructors
    Order(org, training, order_ref, contact_name, contact_email, students) =
        new(create_key(contact_name), org, training, order_ref, contact_name, contact_email, students)
end
