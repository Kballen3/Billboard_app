class AddNameToBillboards < ActiveRecord::Migration[5.2]
  def change
    add_column :billboards, :name, :string  
  end
end
