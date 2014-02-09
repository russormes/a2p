class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.date :date_of_evidence
      t.string :description
      t.string :comment

      t.timestamps
    end
  end
end
