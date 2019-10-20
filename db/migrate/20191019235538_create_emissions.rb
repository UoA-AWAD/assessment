class CreateEmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :emissions do |t|
      t.references :continent, foreign_key: {on_delete: :cascade}
      t.integer :year
      t.float :pollution

      t.timestamps
    end
  end
end
