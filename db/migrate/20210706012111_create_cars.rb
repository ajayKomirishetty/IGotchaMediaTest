class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.integer :brand_id
      t.string :model
      t.integer :doors
      t.string :owner_email

      t.timestamps
    end
  end
end
