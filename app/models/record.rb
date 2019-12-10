class Record < ApplicationRecord
  has_many :facilities, through: :records_facilities
  belongs_to :user
  belongs_to :room

  validates :user, :room, :date, :time, :duration, presence: true
end