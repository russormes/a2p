class CreateAreasOfFocus < ActiveRecord::Migration
  def change
    create_table :areas_of_focus do |t|


      t.timestamps
    end
  end
end
