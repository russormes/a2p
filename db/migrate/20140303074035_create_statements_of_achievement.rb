class CreateStatementsOfAchievement < ActiveRecord::Migration
  def change
    create_table :statements_of_achievement do |t|

      t.timestamps
    end
  end
end
