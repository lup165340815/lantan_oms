class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :code     #订单流水号
      t.integer :car_num_id  #车牌
      t.integer :status
      t.datetime :started_at
      t.datetime :ended_at
      t.float :price
      t.boolean :is_visited  #是否回访
      t.integer :is_pleased  #是否满意
      t.boolean :is_billing  #是否要发票
      t.integer :front_staff_id  #前台
      t.integer :cons_staff_id_1  #施工甲编号
      t.integer :cons_staff_id_2  #施工乙编号
      t.integer :station_id      #工位编号
      t.integer :sale_id         #参加活动
      t.string :c_pcard_relation_id  #套餐卡
      t.string :c_svc_relation_id    #优惠卡
      t.boolean :is_free      #是否免单
      t.integer :types    
      t.integer :store_id
      t.integer :customer_id
      t.datetime :auto_time
      t.integer :return_types, :default=>0
      t.integer :return_direct
      t.float :return_fee, :default =>0
      t.integer :return_staff_id
      t.integer :return_reason
      t.float :front_deduct, :default=>0
      t.float :technician_deduct, :default=>0
      t.datetime :warn_time
      
      t.timestamps
    end

    add_index :orders, :code
    add_index :orders, :car_num_id
    add_index :orders, :status
    add_index :orders, :price
    add_index :orders, :front_staff_id
    add_index :orders, :cons_staff_id_1
    add_index :orders, :cons_staff_id_2
    add_index :orders, :station_id
    add_index :orders, :sale_id
    add_index :orders, :c_pcard_relation_id
    add_index :orders, :c_svc_relation_id
    add_index :orders, :store_id
    add_index :orders, :types
    add_index :orders, :is_visited
    add_index :orders, :customer_id
  end
end
