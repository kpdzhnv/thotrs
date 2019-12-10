class Record < ApplicationRecord
  has_and_belongs_to_many :facilities
  belongs_to :user
  belongs_to :room

  validates :user, :room, :date, :time, :duration, presence: true
end