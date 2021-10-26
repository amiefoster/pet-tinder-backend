class MainUserProfile < ActiveRecord::Base
    has_many :liked_pets
    has_many :pet_profiles, through: :liked_pets


end