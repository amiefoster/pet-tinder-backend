class CreateLikedPets < ActiveRecord::Migration[6.1]
  def change
    create_table :liked_pets do |t|
      t.integer :main_user_id
      t.integer :pet_profile_id
    end
  end
end
