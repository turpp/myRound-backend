class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.integer :score, default: 0
      t.float :gir, default: 0
      t.float :fir, default: 0
      t.integer :num_of_holes
    

      t.timestamps
    end
  end
end
