class RemoveDatetimeFromAlarms < ActiveRecord::Migration
  def change
    remove_column :alarms, :datetime, :datetime
  end
end
