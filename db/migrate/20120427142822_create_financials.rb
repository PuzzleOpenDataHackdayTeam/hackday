class CreateFinancials < ActiveRecord::Migration
  def change
    create_table :financials do |t|
      t.string :name
      t.integer :id_number
      t.string :type
      t.references :financials

      t.timestamps
    end
  end
end
