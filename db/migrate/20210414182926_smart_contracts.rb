class SmartContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :smart_contracts do |t|
      t.string :transactionHash
      t.string :projectOfficeAddress
      t.string :materialProviderAddress
      t.string :solutionManufacturingAddress
      t.string :qualitySecurityHomologationAddress
      t.integer :blockNumber
      t.timestamps
    end
  end
end
