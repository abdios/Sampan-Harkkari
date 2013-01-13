class AddForgeinKeyToEmployees < ActiveRecord::Migration
  def change
    add_column :employee, :company_id, :integer
  end
end
