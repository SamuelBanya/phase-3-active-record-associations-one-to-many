class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :comment
      # NOTE: This is the 'foreign key' for the 'games table:
      t.integer :game_id
      t.timestamps
    end
  end
end
