class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :event_id
      t.integer :claim_id
      t.string :name

      t.timestamps
    end
  end
end
