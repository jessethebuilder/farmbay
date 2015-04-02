class CreateEbayConnections < ActiveRecord::Migration
  def change
    create_table :ebay_connections do |t|

      t.timestamps null: false
    end
  end
end
