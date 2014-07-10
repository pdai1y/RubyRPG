class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :user_id
      t.string :name
      t.integer :lvl
      t.string :race
      t.string :virtue
      t.string :alignment
      t.string :size
      # Strength
      t.integer :str, default: 0
      t.integer :strMod, default: 0
      # Dexterity
      t.integer :dex, default: 0
      t.integer :dexMod, default: 0
      # Constitution
      t.integer :con, default: 0
      t.integer :conMod, default: 0
      # Intelligence
      t.integer :int, default: 0
      t.integer :intMod, default: 0
      # Wisdom
      t.integer :wis, default: 0
      t.integer :wisMod, default: 0
      # Charisma
      t.integer :char, default: 0
      t.integer :charMod, default: 0
      # Hit Points & Armor Class
      t.integer :HP, default: 0
      t.integer :AC, default: 0
      # Initiative Mod & Base Attack Bonus
      t.integer :initMod, default: 0
      t.integer :BAB, default: 0
      # Spell Resistance
      t.integer :spellRes, default: 0

      t.timestamps
    end
  end
end
