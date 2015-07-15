class EditEventType < ActiveRecord::Migration
  def change
    remove_column(:events, :type)
    add_column(:events, :event_type, :string)
  end
end
