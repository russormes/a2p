class CreateAreaOfFocus < ActiveRecord::Migration
  def change
    create_table :area_of_focus do |t|
      t.string :area_of_focus

      t.timestamps
    end
  end
end
