class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.belongs_to :doctor, index: true
      t.belongs_to :patients, index: true
      t.belongs_to :appointements, index: true
      t.timestamps
    end
  end
end
