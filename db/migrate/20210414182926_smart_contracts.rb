class SmartContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :smart_contracts do |t|
      t.string :transaction_hash
      t.string :projectOffice
      t.string :materialProvider
      t.string :solutionManufacturin
      t.string :cqualitySecurityHomologation
      t.integer :block_number
      t.timestamps
    end
  end
end
