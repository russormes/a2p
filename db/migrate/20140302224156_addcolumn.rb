class Addcolumn < ActiveRecord::Migration
  def change
    add_column :pupils, :ethnicity, :integer
  end
end
