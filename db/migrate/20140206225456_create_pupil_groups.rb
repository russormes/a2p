class CreatePupilGroups < ActiveRecord::Migration
  def change
    create_table :pupil_groups do |t|
      t.integer :pupil_id
      t.integer :group_id

      t.timestamps
    end
  end
end
