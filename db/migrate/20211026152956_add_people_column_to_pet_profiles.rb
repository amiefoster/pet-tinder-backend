class AddPeopleColumnToPetProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :pet_profiles, :owner_name, :string
    add_column :pet_profiles, :owner_age, :integer
  end
end
