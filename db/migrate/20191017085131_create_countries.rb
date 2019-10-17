class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :continent
      t.string :country

      t.timestamps
    end
  end
end
