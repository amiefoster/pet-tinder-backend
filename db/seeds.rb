require 'faker'

PetProfile.delete_all
MainUserProfile.delete_all
LikedPet.delete_all



puts "🌱 Seeding pet profiles..."

puts "Fetching some puppers 🐕 "

25.times do
    name= Faker::Creature::Dog.name
    breed= Faker::Creature::Dog.breed
    owner_name= Faker::Name.first_name 
    owner_age= rand(20..40)
    owner_hobby= Faker::Hobby.activity
    # image_url= "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/golden-retriever-royalty-free-image-506756303-1560962726.jpg?crop=0.672xw:1.00xh;0.166xw,0&resize=640:*"
    #Faker::LoremFlickr.image(size: "300x300", search_terms: ['dog'])
    image_dim_1= rand(300..400)
    image_dim_2= rand(300..400)
    image_url="https://loremflickr.com/#{image_dim_1}/#{image_dim_2}/dog"
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

puts "puppers seeded 🌱 "
puts "Begging some cats to join us on the couch 🐈 "

25.times do
    name= Faker::Creature::Cat.name
    breed= Faker::Creature::Cat.breed
    owner_name= Faker::Name.first_name 
    owner_age= rand(20..40)
    owner_hobby= Faker::Hobby.activity
    #image_url=Faker::LoremFlickr.image(size: "300x300", search_terms: ['cat'])
    image_dim_1= rand(300..400)
    image_dim_2= rand(300..400)
    image_url="https://loremflickr.com/#{image_dim_1}/#{image_dim_2}/cat"
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

puts "cats seeded 🌱 "

puts "seeding pet profile pictures"

one = PetProfile.find(1)
one.update(image_url: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/27230104/Staffordshire-Bull-Terrier-head-portrait-outdoors.jpg")

two = PetProfile.find(2)
two.update(image_url: "https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/8/2020/09/GettyImages-1021895664.jpg")

three = PetProfile.find(3)
three.update(image_url: "https://doglime.com/wp-content/uploads/2020/12/Cairn-Terrier-1-min.jpg")

four = PetProfile.find(4)
four.update(image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2021%2F04%2F05%2Fbelgian-malinois-vertical-sitting-1172630902.jpg")

five = PetProfile.find(5)
five.update(image_url: "https://dogtime.com/assets/uploads/gallery/bloodhound-dog-breed-pictures/7-faceforward.jpg")

six = PetProfile.find(6)
six.update(image_url: "https://scx2.b-cdn.net/gfx/news/2021/dingo.jpg")

seven = PetProfile.find(7)
seven.update(image_url: "https://vetstreet-brightspot.s3.amazonaws.com/57/dcd050a3fc11e087a80050568d634f/file/rat-terrier-4-062411.jpg")

eight = PetProfile.find(8)
eight.update(image_url: "https://youdidwhatwithyourweiner.com/wp-content/uploads/2021/04/Dachshund-Lose-Weight-Featured.jpg")

nine = PetProfile.find(9)
nine.update(image_url: "https://doggiedesigner.com/wp-content/uploads/2020/09/Cardigan-Welch-Corgie-in-Road.jpg")

ten = PetProfile.find(10)
ten.update(image_url: "https://ppg-web-external.s3.amazonaws.com/uploads/zinnia/2015/12/08/norfolk-terrier.jpg")

eleven = PetProfile.find(11)
eleven.update(image_url: "https://www.holidogtimes.com/wp-content/uploads/2018/01/samoyed.png")

tewlve = PetProfile.find(12)
tewlve.update(image_url: "https://media-be.chewy.com/wp-content/uploads/2021/06/03165025/Bedlington-Terrier-FeaturedImage.jpg")

thirteen = PetProfile.find(13)
thirteen.update(image_url: "https://www.rover.com/blog/wp-content/uploads/2018/11/beagle-1024x731.jpg")

fourteen = PetProfile.find(14)
fourteen.update(image_url: "https://d.newsweek.com/en/full/1788696/stock-image-tibetan-mastiff.jpg?w=1600&h=1200&q=88&f=31e6c8db22ef8a9867fd21fac2bf8f94")

fifteen = PetProfile.find(15)
fifteen.update(image_url: "https://cdn.buttercms.com/ZF8K2t8hT8OoNR3W42bX")

sixteen = PetProfile.find(16)
sixteen.update(image_url: "https://nationaltoday.com/wp-content/uploads/2020/02/national-golden-retriever-day.jpg")

seventeen = PetProfile.find(17)
seventeen.update(image_url: "https://i.pinimg.com/originals/29/3c/da/293cda0c16282e746ecd4eeb4060f0fc.jpg")

eighteen = PetProfile.find(18)
eighteen.update(image_url: "https://bowwowinsurance.com.au/wp-content/uploads/2020/09/shutterstock_124841542-Portrait-of-nice-clumber-spaniel.jpg")

nineteen = PetProfile.find(19)
nineteen.update(image_url: "https://blog.myollie.com/content/images/2020/03/shutterstock_335297090.jpg")

twenty = PetProfile.find(20)
twenty.update(image_url: "https://vetstreet.brightspotcdn.com/dims4/default/07f94a8/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F29%2Fda%2F884e8de246cba583d2fb3859b885%2Fkeeshond-AP-0VDABK-590sm52313.jpg")

tewntyOne = PetProfile.find(21)
tewntyOne.update(image_url: "https://barkingroyalty.com/wp-content/uploads/2021/06/saluki-dog.jpg")

twentyTwo = PetProfile.find(22)
twentyTwo.update(image_url: "https://img.dog-learn.com/dog-breeds/afghan-hound/afghan-hound-i1-sz6.jpg")

twentyThree = PetProfile.find(23)
twentyThree.update(image_url: "https://www.chihuahuawardrobe.com/wp-content/gallery/chihuahua-pictures/chihuahua-running.jpg")

twentyFour = PetProfile.find(24)
twentyFour.update(image_url: "https://i.pinimg.com/736x/01/78/9d/01789d31a4df961f967e32e9ded37347.jpg")

twentyFive = PetProfile.find(25)
twentyFive.update(image_url: "ttps://vetstreet-brightspot.s3.amazonaws.com/c6/d03610a8a111e0a0d50050568d634f/file/otterhound-3-645mk070411.jpg")

twentySix = PetProfile.find(26)
twentySix.update(image_url: "https://images.freeimages.com/images/large-previews/b0d/ziggy-the-cat-1400927.jpg")

twentySeven = PetProfile.find(27)
twentySeven.update(image_url:"https://images.freeimages.com/images/large-previews/f9a/cat-1-1566138.jpg")

twentyEight = PetProfile.find(28)
twentyEight.update(image_url:"https://images.freeimages.com/images/large-previews/f75/siamese-cat-1311961.jpg")

twentyNine = PetProfile.find(29)
twentyNine.update(image_url: "https://images.freeimages.com/images/large-previews/5af/cat-1377061.jpg")

thirty = PetProfile.find(30)
thirty.update(image_url: "https://images.freeimages.com/images/large-previews/563/cat-1378752.jpg")

thirtyOne = PetProfile.find(31)
one.update(image_url:"https://images.freeimages.com/images/large-previews/13e/my-cat-1363423.jpg")

thirtyTwo = PetProfile.find(32)
thirtyTwo.update(image_url:"https://images.freeimages.com/images/large-previews/9e4/cat-1384307.jpg")

thirtyThree = PetProfile.find(33)
thirtyThree.update(image_url:"https://images.freeimages.com/images/large-previews/c22/cat-1395746.jpg")

# thirtyFour = PetProfile.find(34)
# one.update(image_url=)

# thirtyFive = PetProfile.find(35)
# thirtyFive.update(image_url=)

# thirtySix = PetProfile.find(36)
# thirtySix.update(image_url=)

# thirtySeven = PetProfile.find(37)
# thirtySeven.update(image_url=)

# thirtyEight = PetProfile.find(38)
# thirtyEight.update(image_url=)

# thirtyNine = PetProfile.find(39)
# thirtyNine.update(image_url=)

# forty = PetProfile.find(40)
# forty.update(image_url=)

# fortyOne = PetProfile.find(41)
# fortyOne.update(image_url=)

fortyTwo = PetProfile.find(42)
fortyTwo.update(image_url=)

fortyThree = PetProfile.find(43)
fortyThree.update(image_url:"https://images2.minutemediacdn.com/image/upload/c_crop,h_1350,w_2400,x_0,y_59/v1628778532/shape/mentalfloss/87226-gettyimages-1247734973.jpg?itok=qBoDBIYv")

fortyFour = PetProfile.find(44)
fortyFour.update(image_url:"https://media-be.chewy.com/wp-content/uploads/2016/09/01160419/black-cat-1-1330x711.jpg")

fortyFive = PetProfile.find(45)
fortyFive.update(image_url:"https://www.thesprucepets.com/thmb/bQOVEZj0UFxFyh4K9RmoDtUciEQ=/1333x1000/smart/filters:no_upscale()/GettyImages-528925876-b27e1609b74e43eaa56d5a2b8bdc1064.jpg")

fortySix = PetProfile.find(46)
fortySix.update(image_url:"https://ca-times.brightspotcdn.com/dims4/default/ebba14e/2147483647/strip/true/crop/1611x906+0+0/resize/1486x836!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Ffd%2Fef%2F05c1aab3e76c3d902aa0548c0046%2Fla-la-hm-pet-issue-18-jpg-20150615")

fortySeven = PetProfile.find(47)
fortySeven.update(image_url:"https://www.petguide.com/wp-content/uploads/2015/08/miniature-cats.jpg")

fortyEight = PetProfile.find(48)
fortyEight.update(image_url:"https://www.familyhandyman.com/wp-content/uploads/2020/10/cat-unicorn-costume-GettyImages-1125152183.jpg?fit=696,696")

fortyNine = PetProfile.find(49)
fortyNine.update(image_url: "https://icatcare.org/app/uploads/2018/10/Siamese.png")

fifty = PetProfile.find(50)
fifty.update(image_url: "https://images.unsplash.com/photo-1594318142972-1e2ea7487a3e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW5ncnklMjBjYXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80")






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

puts "✅ Done seeding!"



