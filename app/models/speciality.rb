class Speciality < ApplicationRecord
  has_many :doctors_has_specialty
  has_many :doctors, through: :doctors_has_specialty
end
