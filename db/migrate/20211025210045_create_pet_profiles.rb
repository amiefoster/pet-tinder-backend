class CreatePetProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_profiles do |t|
      t.string :name
      t.string :species 
      t.string :breed
      t.integer :age
      t.string :owner_hobby
      t.string :image_url
      t.boolean :user_like
      t.boolean :profile_like
    end
  end
end
