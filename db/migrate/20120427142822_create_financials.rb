class CreateFinancials < ActiveRecord::Migration
  def change
    create_table :financials do |t|
      t.string :type

      t.timestamps
    end
  end
end
