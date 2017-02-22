class CreateNationsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :nations do |t|
      t.string :name
      t.string :government
      t.string :economy
      t.string :geography
      t.integer :capital
      t.integer :resources
      t.integer :population
      t.decimal :stability
    end
  end
end
