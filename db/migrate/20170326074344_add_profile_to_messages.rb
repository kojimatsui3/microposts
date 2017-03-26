class AddProfileToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :profile, :string
  end
end
