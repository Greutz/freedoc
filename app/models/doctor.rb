class Doctor < ApplicationRecord
  has_many :appointements
  has_many :patients, through: :appointements
  belongs_to :city
  has_many :doctors_has_specialty
  has_many :specialities, through: :doctors_has_specialties
end
