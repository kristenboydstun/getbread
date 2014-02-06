class CreateClaimItems < ActiveRecord::Migration
  def change
    create_table :claim_items do |t|
      t.integer :claim_id, :item_id
      t.timestamps
    end
  end
end
