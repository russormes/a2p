class CreateStatementsOfAchievement < ActiveRecord::Migration
  def change
    create_table :statements_of_achievement do |t|
      t.string :level
      t.text :statement

      t.timestamps
    end
  end
end
