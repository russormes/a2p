class CreateResponsibleAdults < ActiveRecord::Migration
  def change
    create_table :responsible_adults do |t|
      t.string :given_name
      t.string :surname
      t.string :job_title
      t.text :responsibility

      t.timestamps
    end
  end
end
