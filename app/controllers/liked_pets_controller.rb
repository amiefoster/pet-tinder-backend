require 'pry'

class LikedPetsController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get '/mutuallikes' do 
      #likedPets = MainUserProfile.first.pet_profiles
      truePetLikes = LikedPet.all
      #mutualLikes = likedPets & truePetLikes 
      truePetLikes.to_json

    end

    #adding profile to mutual likes via id
    post '/mutuallikes' do
      
        mutualLike = LikedPet.create( name: params[:name], 
          species: params[:species], 
          breed: params[:breed], 
          age: params[:age], 
          owner_hobby: params[:owner_hobby], 
          image_url: params[:image_url], 
          profile_like: params[:profile_like], 
          owner_name: params[:owner_name], 
          owner_age: params[:owner_age], 
          main_user_profile_id: params[:main_user_profile_id])
        
        mutualLike.to_json
    end
  
  end
  