class AddLogIdToEvents < ActiveRecord::Migration
  def change
    add_column(:events, :log_id, :integer)
  end
end
