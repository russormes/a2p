class CreateSens < ActiveRecord::Migration
  def change
    create_table :sens do |t|
      t.string :sen_code

      t.timestamps
    end
  end
end
