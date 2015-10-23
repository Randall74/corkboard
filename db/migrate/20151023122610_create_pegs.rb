class CreatePegs < ActiveRecord::Migration
  def change
    create_table :pegs do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
