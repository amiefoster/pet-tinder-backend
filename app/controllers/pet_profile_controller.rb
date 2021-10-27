class PetProfileController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    #returns all pet profiles
    get '/petprofiles' do
      all_pet_profiles = PetProfile.all
      all_pet_profiles.to_json
    end

    #get one profile by id
    get'/petprofiles/:id' do
      single_pet_profile = PetProfile.find(params[:id])
      single_pet_profile.to_json
    end

    #update
    patch '/petprofiles/:id/edit' do
        petProfile = PetProfile.find(params[:id])

        petProfile.update(user_like: params[:user_like])

        petProfile.to_json
    end

    #delete
    delete '/petprofiles/:id' do
        petProfile = PetProfile.find(params[:id])
        petProfile.destroy
    end

  
  end