class CreatePaths < ActiveRecord::Migration[5.1]
  def change
    create_table :paths do |t|
      t.references :vehicle, foreign_key: true
      t.references :passenger, foreign_key: true

      t.timestamps
    end
  end
end
