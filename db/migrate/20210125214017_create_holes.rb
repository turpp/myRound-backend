class CreateHoles < ActiveRecord::Migration[6.0]
  def change
    create_table :holes do |t|
      t.belongs_to :round, null: false, foreign_key: true
      t.integer :score
      t.integer :fwloc
      t.integer :girloc
      t.integer :putts

      t.timestamps
    end
  end
end
