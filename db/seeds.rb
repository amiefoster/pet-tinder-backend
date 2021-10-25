require 'faker'


puts "🌱 Seeding pet profiles..."

puts "Fetching some puppers 🐕 "

25.times do
    PetProfile.create(
        name: Faker::Creature::Dog.name
        species: "Dog"
        breed: Faker::Creature::Dog.breed
        age: rand(15)
        owner_hobby: Faker::Hobby.activity
        image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: [‘dog’], match_all: true)
        profile_like: [true, false].sample
    )
end


puts "Begging some cats to join us on the couch 🐈 "

25.times do
    PetProfile.create(
        name: Faker::Creature::Cat.name
        species: "Cat"
        breed: Faker::Creature:Cat.breed
        age: rand(20)
        owner_hobby: Faker::Hobby.activity
        image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: [‘cat’], match_all: true)
        profile_like: [true, false].sample
    )
end

puts "creating the lucky single user"

MainUser.create(
    name: Gwen
    species: "Cat"
    breed: Faker::Creature:Cat.breed
    age: rand(20)
    owner_hobby: "Gardening"
    image: "https://images.pexels.com/photos/982865/pexels-photo-982865.jpeg?auto=compress&cs=tinysrgb&w=300&h=300&dpr=1"
)

puts "✅ Done seeding!"



