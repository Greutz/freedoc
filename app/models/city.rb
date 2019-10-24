class City < ApplicationRecord
  belongs_to :appointement
  belongs_to :patient
  belongs_to :doctor
end
