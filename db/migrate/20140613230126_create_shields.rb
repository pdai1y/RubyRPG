class CreateShields < ActiveRecord::Migration
  def change
    create_table :shields do |t|
      t.string :name
      t.integer :acBonus
      t.integer :weight
      t.integer :checkPenalty
      t.integer :spellFailure
      t.string :specialProperties

      t.timestamps
    end
  end
end
