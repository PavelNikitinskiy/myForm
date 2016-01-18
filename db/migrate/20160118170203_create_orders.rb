class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :email
      t.string :product_id
      t.string :mobile
      t.integer  :sum
      t.integer  :days
      t.timestamps null: false
    end
  end
end
