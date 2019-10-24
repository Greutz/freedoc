class Speciality < ApplicationRecord
  belongs_to :doctors_has_specialty
  has_many :doctors, through: :doctors_has_specialty
end
