require 'faker'

PetProfile.delete_all
MainUserProfile.delete_all



puts "🌱 Seeding pet profiles..."

puts "Fetching some puppers 🐕 "

25.times do
    name= Faker::Creature::Dog.name
    breed= Faker::Creature::Dog.breed
    owner_name= Faker::Name.first_name 
    owner_age= rand(20..40)
    owner_hobby= Faker::Hobby.activity
    image_url= Faker::LoremFlickr.image(size: "300x300", search_terms: ['dog'])
    age= rand(15)
    profile_like= [true, false].sample

    PetProfile.create(
        name: name,
        species: "Dog",
        breed: breed,
        age: age,
        owner_name: owner_name,
        owner_age: owner_age,
        owner_hobby: owner_hobby,
        image_url: image_url,
        profile_like: profile_like
    )
end


puts "Begging some cats to join us on the couch 🐈 "

25.times do
    name= Faker::Creature::Cat.name
    breed= Faker::Creature::Cat.breed
    owner_name= Faker::Name.first_name 
    owner_age= rand(20..40)
    owner_hobby= Faker::Hobby.activity
    image_url= Faker::LoremFlickr.image(size: "300x300", search_terms: ['cat'])
    age= rand(20)
    profile_like= [true, false].sample
    PetProfile.create(
        name: name,
        species: "Cat",
        breed: breed,
        age: age,
        owner_name: owner_name,
        owner_age: owner_age,
        owner_hobby: owner_hobby,
        image_url: image_url,
        profile_like: profile_like
    )
end


puts "creating the lucky single user"

1.times do
    age= rand(20)
    MainUserProfile.create(
        name: "Gwen",
        species: "Cat",
        breed: "Orange",
        age: age,
        owner_name: "Prof. Jameson Monahan" ,
        owner_age: 25,
        owner_hobby: "Gardening",
        image_url: "https://images.pexels.com/photos/982865/pexels-photo-982865.jpeg?auto=compress&cs=tinysrgb&w=300&h=300&dpr=1"
)
end

LikedPet.create(main_user_profile_id: 1, pet_profile_id: 1)

puts "✅ Done seeding!"



