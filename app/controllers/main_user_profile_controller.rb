class MainUserProfileController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get '/mainuser' do 
      mainUser = MainUserProfile.all
      mainUser.to_json
    end

    #get

    get '/mainuser/:id' do
      mainUser = MainUserProfile.find(params[:id])
      mainUser.to_json
    end
   
    #post
    post '/mainuser' do
      mainUser = MainUserProfile.create(name: params[:name], species: params[:species], breed: params[:breed], age: params[:age], owner_hobby: params[:owner_hobby], image_url: params[:image_url],owner_name: params[:owner_name], owner_age: params[:owner_age])

      mainUser.to_json
    end

    #update
    patch '/mainuser/:id/edit' do
        mainUser = MainUserProfile.find(params[:id])

        mainUser.update(name: params[:name], species: params[:species], breed: params[:breed], age: params[:age], owner_hobby: params[:owner_hobby], image_url: params[:image_url],owner_name: params[:owner_name], owner_age: params[:owner_age])

        mainUser.to_json
    end

    
  end