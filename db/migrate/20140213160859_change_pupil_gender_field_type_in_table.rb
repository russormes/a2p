class ChangePupilGenderFieldTypeInTable < ActiveRecord::Migration
  def change
    remove_column :pupils, :gender
    add_column :pupils, :gender, :integer
  end
end
