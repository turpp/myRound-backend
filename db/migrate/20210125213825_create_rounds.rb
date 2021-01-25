class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.integer :score
      t.integer :gir
      t.integer :fir
      t.integer :num_of_holes

      t.timestamps
    end
  end
end
