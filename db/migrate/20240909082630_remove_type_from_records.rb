class RemoveTypeFromRecords < ActiveRecord::Migration[7.0]
  def change
    remove_column :records, :type
  end
end
