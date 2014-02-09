class CreateEvidenceTypes < ActiveRecord::Migration
  def change
    create_table :evidence_types do |t|
      t.string :evidence_type

      t.timestamps
    end
  end
end
