class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.references :pupil
      t.references :group

      t.timestamps
    end
  end
end
