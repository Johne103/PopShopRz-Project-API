class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.string :image
      t.float :original_price
      t.float :offer_price
      t.string :end_time
      t.boolean :is_available
      t.integer :quantity

      t.timestamps
    end
  end
end
