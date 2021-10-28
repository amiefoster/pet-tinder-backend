class AddColumnsToLikedPets < ActiveRecord::Migration[6.1]
  def change
    add_column :liked_pets, :name, :string
    add_column :liked_pets, :species, :string
    add_column :liked_pets, :breed, :string
    add_column :liked_pets, :age, :integer
    add_column :liked_pets, :owner_hobby, :string
    add_column :liked_pets, :image_url, :string
    add_column :liked_pets, :profile_like, :boolean
    add_column :liked_pets, :owner_name, :string
    add_column :liked_pets, :owner_age, :integer
  end
end
