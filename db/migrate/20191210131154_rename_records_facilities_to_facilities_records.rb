class RenameRecordsFacilitiesToFacilitiesRecords < ActiveRecord::Migration[6.0]
  def change
    rename_table :records_facilities, :facilities_records
  end
end
