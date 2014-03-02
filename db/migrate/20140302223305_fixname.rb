class Fixname < ActiveRecord::Migration
def change
  rename_column :pupils, :family_name, :surname
end
end