class CreatePupilAssessments < ActiveRecord::Migration
  def change
    create_table :pupil_assessments do |t|
      t.date :date_assessed
      t.string :comment
      t.boolean :present

      t.timestamps
    end
  end
end
