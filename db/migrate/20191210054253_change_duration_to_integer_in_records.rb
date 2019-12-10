class ChangeDurationToIntegerInRecords < ActiveRecord::Migration[6.0]
  def change
    remove_column :records, :duration
    add_column :records, :duration, :integer
  end
end
