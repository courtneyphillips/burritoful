class CreateTables < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.column :name, :string
      t.column :calories, :integer
      t.column :type, :string
    end

    create_table :logs do |t|
      t.column :user_id, :integer
      t.column :date, :datetime
      t.column :event_id, :integer
    end
  end
end
