class CreateYears < ActiveRecord::Migration[5.0]
  def change
    add_column :nations, :year, :integer, :default => 2020
  end
end
