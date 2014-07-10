class CreateProtectiveItems < ActiveRecord::Migration
  def change
    create_table :protective_items do |t|
      t.string :name
      t.integer :acBonus
      t.integer :weight
      t.string :specialProperties

      t.timestamps
    end
  end
end
