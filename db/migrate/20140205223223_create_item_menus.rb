class CreateItemMenus < ActiveRecord::Migration
  def change
    create_table :item_menus do |t|
      t.integer :item_id, :menu_id
      t.timestamps
    end
  end
end
