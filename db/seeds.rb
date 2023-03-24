20.times do
    name = Faker::Name.name
    super_name = Faker::Superhero.name

    Heroe.create(name: name, super_name: super_name)
end

puts 'done seeding'