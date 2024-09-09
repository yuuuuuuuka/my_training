class AddTypeToRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :records, :type, :string
  end
end
