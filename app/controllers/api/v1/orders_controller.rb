module Api
	module V1
		class OrdersController < ApplicationController
			def index
				order = Order.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Loaded Orders', data:order},status: :ok
			end
      def show
				order = Order.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded client order', data:order},status: :ok
      end
      def create
				order = Order.new(order_params)
				if order.save
					render json: {status: 'SUCCESS', message:'Saved Order', data:order},status: :ok
				else
					render json: {status: 'ERROR', message:'Order not saved', data:order.errors},status: :unprocessable_entity
				end
			end
			# Parametros aceitos
			private
			def order_params
				params.permit(:reference, :purchase_channel, :client_name, :adress, :delivery_service, :total_value, :line_items, :status)
			end
		end
	end
end
