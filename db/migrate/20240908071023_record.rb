class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.references :user,     null: false,foreign_key: true
      t.references :exercise, null: false,foreign_key: true
      t.date :date,           null: false
      t.integer :reps,        null: false
      t.integer :duration,    null: false
      t.text   :memo
      

      t.timestamps
    end
  end
end
