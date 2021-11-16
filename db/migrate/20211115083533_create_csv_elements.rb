class CreateCsvElements < ActiveRecord::Migration[6.1]
  def change
    create_table :csv_elements do |t|
      t.references :csv_loader, null: false, foreign_key: true

      t.timestamps
    end
  end
end
