class AddExerciseTypeToRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :records, :exercise_type, :string
  end
end
