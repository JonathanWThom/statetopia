class CreateResponsesEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.integer :event_id
      t.integer :nation_id
      t.string :description
      t.integer :capital_effect
      t.integer :population_effect
      t.decimal :stability_effect
      t.integer :resources_effect
    end

    create_table :events do |t|
      t.string :name
    end

    add_column :nations, :user_id, :integer
  end
end
