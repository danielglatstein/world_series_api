class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.integer :year
      t.integer :loser_id
      t.integer :winner_id

      t.timestamps null: false
    end
  end
end
