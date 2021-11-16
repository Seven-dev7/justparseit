class CreateCsvLoaders < ActiveRecord::Migration[6.1]
  def change
    create_table :csv_loaders do |t|
      t.text :chosen_values

      t.timestamps
    end
  end
end
