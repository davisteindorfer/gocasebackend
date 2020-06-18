module Api
	module V1
		class BatchController < ApplicationController
      def show
				batch = Batch.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded client order', data:batch},status: :ok
      end
      def create
        batch = Batch.new(batch_params)
        if batch.save
          render json: {status: 'SUCCESS', message:'Saved Batch', data:batch},status: :ok
        else
          render json: {status: 'ERROR', message:'Batch not saved', data:batch.errors},status: :unprocessable_entity
        end
      end
      private
      def batch_params
        params.permit(:reference, :purchase_channel, :group_of_orders)
      end
    end
  end
end
