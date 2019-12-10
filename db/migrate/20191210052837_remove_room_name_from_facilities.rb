class RemoveRoomNameFromFacilities < ActiveRecord::Migration[6.0]
  def change
    remove_column :facilities, :room_name
    # many facilities for one room
    add_reference :facilities, :room
  end
end
