class CreateDiscreteAreasOfDevelopment < ActiveRecord::Migration
  def change
    create_table :discrete_areas_of_development do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
