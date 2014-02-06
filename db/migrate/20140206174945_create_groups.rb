class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :classes

      t.timestamps
    end
  end
end
