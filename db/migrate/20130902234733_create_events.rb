class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :kind
      t.references :partner, index: true
      t.string :object_hash
      t.float :lat
      t.float :lon
      t.decimal :temp

      t.timestamps
    end
  end
end
