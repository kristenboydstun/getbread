class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :host_name
      t.string :host_email
      t.string :location
      t.text :description
      t.date :start_date

      t.timestamps
    end
  end
end
