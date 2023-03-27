20.times do
    name = Faker::Name.name
    super_name = Faker::Superhero.name

    Heroe.create(name: name, super_name: super_name)
end
20.times do
    name = Faker::Superhero.power
    description = Faker::Lorem.sentence(word_count: 30)

    Power.create(name: name, description: description)
end

puts 'done seeding'