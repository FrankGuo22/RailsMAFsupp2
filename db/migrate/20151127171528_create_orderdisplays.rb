class CreateOrderdisplays < ActiveRecord::Migration
  def change
    create_table :orderdisplays do |t|

      t.timestamps null: false
    end
  end
end
