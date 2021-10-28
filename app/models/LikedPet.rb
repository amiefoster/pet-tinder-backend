class LikedPet < ActiveRecord::Base
    belongs_to :main_user_profiles
    belongs_to :pet_profile


end