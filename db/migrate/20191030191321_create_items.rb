class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :rented

      t.timestamps
    end
  end
end
