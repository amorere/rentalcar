class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.integer :kms
      t.date :year
      t.string :plate
      t.string :color
      t.string :capacity
      t.string :load
      t.string :transmission
      t.boolean :technical_approval
      t.boolean :insurance
      t.string :performance
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
