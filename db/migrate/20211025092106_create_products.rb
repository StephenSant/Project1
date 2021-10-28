class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :released
      t.string :released_date
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
