class Order < ApplicationRecord
  validates :reference, presence: true
	validates :purchase_channel, presence: true
  validates :client_name, presence: true
  validates :adress, presence: true
	validates :delivery_service, presence: true
  validates :total_value_RS, presence: true
  validates :line_items, presence: true
	validates :status, presence: true
end
