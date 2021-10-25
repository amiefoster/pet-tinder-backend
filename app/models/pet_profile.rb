class PetProfile < ActiveRecord::Base
    has_many :liked_pets
    has_one :main_user, through: :liked_pets
end