class Order < ActiveRecord::Base
  belongs_to :Batch
  set_primary_key :reference
end
