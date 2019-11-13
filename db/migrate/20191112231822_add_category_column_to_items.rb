class AddCategoryColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :category, :string, :default => ''
  end
end
