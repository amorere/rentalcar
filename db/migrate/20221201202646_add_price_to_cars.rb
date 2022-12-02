class AddPriceToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :daily_price, :integer
  end
end
