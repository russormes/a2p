class CreatePupilSens < ActiveRecord::Migration
  def change
    create_table :pupil_sens do |t|

      t.timestamps
    end
  end
end
