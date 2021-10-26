class PetProfile < ActiveRecord::Base
    has_many :liked_pets
    has_one :main_user_profile, through: :liked_pets
end