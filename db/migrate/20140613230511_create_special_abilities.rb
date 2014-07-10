class CreateSpecialAbilities < ActiveRecord::Migration
  def change
    create_table :special_abilities do |t|
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
