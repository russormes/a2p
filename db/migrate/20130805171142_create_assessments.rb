class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :assessment_description

      t.timestamps
    end
  end
end
