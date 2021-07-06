class CreateRepairs < ActiveRecord::Migration[6.1]
  def change
    create_table :repairs do |t|
      t.datetime :repair_date ,null: false
      t.integer :car_id
      t.timestamps
    end
  end
end
