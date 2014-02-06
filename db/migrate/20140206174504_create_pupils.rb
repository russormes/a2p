class CreatePupils < ActiveRecord::Migration
  def change
    create_table :pupils do |t|
      t.string :given_name
      t.string :other_name
      t.string :family_name
      t.string :name_known_by
      t.date :dob
      t.string :gender

      t.timestamps
    end
  end
end
