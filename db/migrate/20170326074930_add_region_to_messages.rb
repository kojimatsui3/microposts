class AddRegionToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :region, :string
  end
end
