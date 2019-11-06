class AddColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :shelf_id, :integer
  end
end
