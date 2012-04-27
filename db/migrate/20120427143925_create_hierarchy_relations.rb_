class CreateHierarchyRelations < ActiveRecord::Migration
  def change
    create_table :hierarchy_relations do |t|
      t.references :parent
      t.references :child

      t.timestamps
    end
  end
end
