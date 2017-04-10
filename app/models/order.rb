class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :status
  belongs_to :shipping_address
  belongs_to :billing_address
end
