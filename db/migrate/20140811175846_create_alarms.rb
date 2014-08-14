class CreateAlarms < ActiveRecord::Migration
  def change
    create_table :alarms do |t|
      t.integer :incidentnr
      t.integer :sitenr
      t.integer :customernr
      t.integer :impnr
      t.text :status
      t.datetime :datetime
      t.text :customername
      t.text :adress
      t.text :post

      t.timestamps
    end
  end
end
