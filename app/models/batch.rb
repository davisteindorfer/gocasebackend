class Batch < ApplicationRecord
  validates :reference, presence: true
	validates :purchase_channel, presence: true
  validates :group_of_orders, presence: true
end
