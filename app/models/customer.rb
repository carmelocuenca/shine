class Customer < ActiveRecord::Base
  
  has_and_belongs_to_many :billing_addresses,
    join_table: :customers_billing_addresses,
    class_name: "Address"

  has_and_belongs_to_many :shipping_addresses,
    join_table: :customers_shipping_addresses,
    class_name: "Address"
end
