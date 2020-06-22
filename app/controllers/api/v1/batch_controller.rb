module Api
	module V1
		class BatchController < ApplicationController
			def index
				batch = Batch.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Loaded Batches', data:batch},status: :ok
			end
      def show
				batch = Batch.all.where(batch_params)
				render json: {status: 'SUCCESS', message:'Loaded batch', data:batch},status: :ok
      end
      def create
        batch = Batch.new(batch_params)
					Order.where(reference: batch.group_of_orders).update(status: "production")
        if batch.save
          render json: {status: 'SUCCESS', message:'Saved Batch', data:batch},status: :ok


        else
          render json: {status: 'ERROR', message:'Batch not saved', data:batch.errors},status: :unprocessable_entity
        end
      end
			def update
				batch = Batch.find(params[:id])
					Order.where(reference: batch.group_of_orders).update(status: "closing")
					render json: {status: 'SUCCESS', message: 'Orders in closing'},status: :ok
			end
      private
      def batch_params
        params.permit(:reference, :purchase_channel, :group_of_orders => [])
      end
    end
  end
end
