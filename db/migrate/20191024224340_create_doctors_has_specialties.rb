class CreateDoctorsHasSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors_has_specialties do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :speciality, index: true
      t.timestamps
    end
  end
end
