class CreateElements < ActiveRecord::Migration[6.1]
  def change
    create_table :elements do |t|
      t.references :loader, null: false, foreign_key: true

      t.timestamps
    end
  end
end
