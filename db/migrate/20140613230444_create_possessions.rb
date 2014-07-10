class CreatePossessions < ActiveRecord::Migration
  def change
    create_table :possessions do |t|
      t.string :name
      t.string :desc
      t.string :weight

      t.timestamps
    end
  end
end
