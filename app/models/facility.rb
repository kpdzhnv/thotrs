class Facility < ApplicationRecord
    has_many :records, through: :records_facilities
end