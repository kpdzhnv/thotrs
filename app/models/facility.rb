class Facility < ApplicationRecord
    has_and_belongs_to_many :records
end