class CreatePackageCards < ActiveRecord::Migration
  #套餐卡
  def change
    create_table :package_cards do |t|
      t.string :name
      t.string :img_url
      t.datetime :started_at
      t.datetime :ended_at
      t.integer :store_id
      t.boolean :status
      t.integer :price
      t.integer :date_types, :default=>0  #时间类型 分为时间段和有效天数
      t.integer :date_month  #有效天数
      t.boolean :is_auto_revist
      t.integer :auto_time
      t.text :revist_content
      t.integer :prod_point
      t.string :description
      t.float :deduct_price, :default=>0
      t.float :deduct_percent, :default=>0
      t.decimal :sale_percent, :precision=>"20,16",:default=>1
      t.boolean :auto_warn, :default=>0
      t.integer :time_warn
      t.string :con_warn
      t.timestamps
    end

    add_index :package_cards, :store_id
    add_index :package_cards, :status
  end
end
