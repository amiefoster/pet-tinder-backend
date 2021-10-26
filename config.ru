require_relative "./config/environment"
require_relative "./app/controllers/liked_pets_controller"
require_relative "./app/controllers/main_user_profile_controller"
require_relative "./app/controllers/pet_profile_controller"

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController
use LikedPetsController
use MainUserProfileController
use PetProfileController

