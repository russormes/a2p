class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :learning_group

      t.timestamps
    end
  end
end
