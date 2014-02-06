class CreatePupilGroups < ActiveRecord::Migration
  def change
    create_table :pupil_groups do |t|
      t.reference :pupil
      t.reference :group

      t.timestamps
    end
  end
end
