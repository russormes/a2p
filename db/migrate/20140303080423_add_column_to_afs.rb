class AddColumnToAfs < ActiveRecord::Migration
  def change
    add_column :areas_of_focus, :name, :string
    add_column :areas_of_focus, :description, :string
  end
end
