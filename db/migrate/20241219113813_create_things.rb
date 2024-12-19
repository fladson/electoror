class CreateThings < ActiveRecord::Migration[8.0]
  def change
    create_table :things do |t|
      t.string :name
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
