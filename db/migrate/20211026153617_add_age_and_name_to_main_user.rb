class AddAgeAndNameToMainUser < ActiveRecord::Migration[6.1]
  def change
    add_column :main_user_profiles, :owner_name, :string
    add_column :main_user_profiles, :owner_age, :integer
    end
  end
