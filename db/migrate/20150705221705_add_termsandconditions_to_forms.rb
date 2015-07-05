class AddTermsandconditionsToForms < ActiveRecord::Migration
  def change
    add_column :forms, :terms_and_conditions, :boolean
  end
end
