class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.text :shop_name
      t.text :logo
      t.text :description
      t.has_many :shop_groups

      t.timestamps
    end
  end
end
