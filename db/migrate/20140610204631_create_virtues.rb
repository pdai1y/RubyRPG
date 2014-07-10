class CreateVirtues < ActiveRecord::Migration
  def change
    create_table :virtues do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
