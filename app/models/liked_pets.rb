class LikedPets < ActiveRecord::Base
    belongs_to :main_user
    belongs_to :pet_profile

end