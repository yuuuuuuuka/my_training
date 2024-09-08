class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name,null: false, default: ""
      t.text :description,null: false
      t.timestamps
    end
  end
end
