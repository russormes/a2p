class CreatePupilGroups < ActiveRecord::Migration
  def change
    create_table :pupil_groups do |t|

      t.timestamps
    end
  end
end
