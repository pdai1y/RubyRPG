class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.string :racialModDesc
      t.string :favoredClass
      t.string :raceDescription
      t.integer :strMod
      t.integer :dexMod
      t.integer :intMod
      t.integer :wisMod
      t.integer :charMod
      t.integer :conMod

      t.timestamps
    end
  end
end
