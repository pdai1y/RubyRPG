class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
    	#t.integer :player_id
      t.integer :copper
      t.integer :silver
      t.integer :gold
      t.integer :platinum

      t.timestamps
    end
  end
end
