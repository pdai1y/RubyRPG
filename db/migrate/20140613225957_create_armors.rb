class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.string :name
      t.string :type
      t.string :desc
      t.integer :acBonus
      t.integer :maxDex
      t.integer :checkPenalty
      t.integer :spellFailure
      t.string :speed
      t.integer :weight
      t.string :specialProperties

      t.timestamps
    end
  end
end
