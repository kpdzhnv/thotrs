class RenameColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :facilities_records, :facilities_id, :facility_id
    rename_column :facilities_records, :records_id, :record_id
  end
end
