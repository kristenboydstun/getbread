class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.integer :event_id
      t.string :username

      t.timestamps
    end
  end
end
