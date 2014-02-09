class CreateAssessmentEvidences < ActiveRecord::Migration
  def change
    create_table :assessment_evidences do |t|
      t.string :evidence_file
      t.string :comment

      t.timestamps
    end
  end
end
