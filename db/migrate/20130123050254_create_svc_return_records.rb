class CreateSvcReturnRecords < ActiveRecord::Migration
  #储值卡返还表
  def change
    create_table :svc_return_records do |t|
      t.integer :store_id
      t.float :price
      t.integer :types
      t.text :content 
      t.integer :target_id
      t.float :total_price

      t.timestamps
    end

    add_index :svc_return_records, :store_id

  end
end
