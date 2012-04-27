class CreateFinancialData < ActiveRecord::Migration
  def change
    create_table :financial_data do |t|
      t.decimal :grosscosts
      t.decimal :income
      t.integer :year
      t.boolean :fixed
      t.references :financial
    end
  end
end
