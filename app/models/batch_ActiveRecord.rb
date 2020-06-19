class Batch < ActiveRecord::Base
  has_many :Order
  set_primary_key :reference
end
