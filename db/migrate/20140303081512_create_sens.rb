class CreateSens < ActiveRecord::Migration
  def change
    create_table :sens do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
