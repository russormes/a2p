class AddFieldAndIndexToPupils < ActiveRecord::Migration
  def change
    add_column :pupils, :image_path, :string
    add_index :pupils, :family_name
  end
end
