class Addfilename < ActiveRecord::Migration
  def change
    add_column :forms, :resume, :string
  end
end
