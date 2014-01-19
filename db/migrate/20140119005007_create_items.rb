class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :event_id
      t.string :name
      t.string :owner_name

      t.timestamps
    end
  end
end
