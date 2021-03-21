class Interventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.references :author, null: false, foreign_key: { to_table: :employees }
      t.references :customers, null: false, foreign_key: true
      t.references :building, null: false, foreign_key: true
      t.references :batteries, foreign_key: true
      t.references :columns, foreign_key: true
      t.references :elevators, foreign_key: true
      t.references :employees, foreign_key: true
      t.date :Start_of_the_intervention
      t.date :End_of_the_intervention
      t.text :Result
      t.text :Report
      t.string :Status
      t.timestamps

    end
    rename_column :interventions, :author_id, :author

  end
end
