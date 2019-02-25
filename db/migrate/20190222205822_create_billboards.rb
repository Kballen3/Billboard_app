class CreateBillboards < ActiveRecord::Migration[5.2]
  def change
    create_table :billboards do |t|
      t.string :Latino
      t.string :Eighties

      t.timestamps
    end
  end
end
