class AddUserIdToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :person_id, :integer
  end
end
