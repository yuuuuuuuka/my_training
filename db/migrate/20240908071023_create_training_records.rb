class CreateTrainingRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :trainig_records do |t|
      t.references :user,     null: false,foreign_key: true
      t.date :date,           null: false
      t.integer :reps,        null: false
      t.integer :duration,    null: false
      t.text   :memo
      t.string :exercise_type, null: false

      t.timestamps
    end
  end
end
