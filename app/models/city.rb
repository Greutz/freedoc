class City < ApplicationRecord
  belongs_to :appointement, optional: true
  belongs_to :patient, optional: true
  belongs_to :doctor, optional: true
end
