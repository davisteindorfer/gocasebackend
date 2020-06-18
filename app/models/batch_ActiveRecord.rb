class Batch < ActiveRecord::Base
  has_many :Order
  set_primary_key :purchase_channel
end
