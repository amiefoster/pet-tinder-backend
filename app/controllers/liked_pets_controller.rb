class LikedPetsController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get '/mutuallikes' do 
      likedPets = MainUserProfile.first.pet_profiles
      truePetLikes = PetProfile.where("profile_like = '1'")
      mutualLikes = likedPets & truePetLikes 
      mutualLikes.to_json

    end

    #adding profile to mutual likes via id
    post '/mutuallikes' do
        mutualLike = LikedPet.create(main_user_profile_id: MainUserProfile.first.id, pet_profile_id: params[:pet_profile_id])
        mutualLike.to_json
    end
  
  end
  