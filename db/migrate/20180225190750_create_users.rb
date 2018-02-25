class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :password
      t.string :password_confirmation
      t.string :address_line
      t.string :address_line2
      t.string :postcode
      t.string :town_city
      t.string :country
      t.string :image
      t.boolean :is_store

      t.timestamps
    end
  end
end
