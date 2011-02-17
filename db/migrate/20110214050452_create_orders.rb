class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
	  t.string :code, :limit => 255
	  t.datetime :date
	  t.integer :client_id
	  t.integer :amount
	  t.string :nit, :limit => 10, :unique => true
	  t.integer :order_id
	  
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
