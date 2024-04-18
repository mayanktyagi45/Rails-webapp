class AddConstraintsToContactForms < ActiveRecord::Migration[6.1]
  def change
       change_column_null :contact_forms, :first_name, false
       change_column_null :contact_forms, :last_name, false
       change_column_null :contact_forms, :email, false
       change_column_null :contact_forms, :phone, false

       add_index :contact_forms, :email, unique: true
  end
end
