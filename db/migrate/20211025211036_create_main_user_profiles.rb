class CreateMainUserProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :main_user_profiles do |t|
      t.string :name
      t.string :species 
      t.string :breed
      t.integer :age
      t.string :owner_hobby
      t.string :image_url
  end
end
end
