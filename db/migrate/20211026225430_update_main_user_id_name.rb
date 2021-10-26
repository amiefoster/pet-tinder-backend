class UpdateMainUserIdName < ActiveRecord::Migration[6.1]
  def change
    rename_column :liked_pets, :main_user_id, :main_user_profile_id
  end
end
