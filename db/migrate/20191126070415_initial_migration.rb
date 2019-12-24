class InitialMigration < ActiveRecord::Migration[6.0]
  def up
    create_table :statuses do |t|
      t.string :status_name
      t.float :discount
    end

    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :number
      t.string :password

      t.timestamps
    end

    # many users for one status
    add_reference :users, :status

    create_table :rooms do |t|
      t.string :room_name, null: false
      t.text :description
    end

    create_table :facilities do |t|
      t.string :room_nameв
      t.text :description
    end

    create_table :records do |t|
      t.date :date
      t.time :time
      t.time :duration
    end

    create_table :records_facilities do |t|
    end

    # records - facilities
    add_reference :records_facilities, :records
    add_reference :records_facilities, :facilities

    # one record for one user, one room, many facilities
    add_reference :records, :user
    add_reference :records, :room

  end

  def down
    drop_table :users
    drop_table :statuses
    drop_table :records
    drop_table :rooms
    drop_table :facilities
    drop_table :records_facilities
  end
end
