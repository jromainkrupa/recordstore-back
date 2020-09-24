module Api
  module V1
    class RecordsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_record, only: [:show, :update, :destroy]

      def index
        @records = current_user.records.all

        render json: @records
      end

      def show
        render json: @record
      end

      def create
        @record = current_user.records.build(record_params)

        if @record.save
          render json: @record, status: :created
        else
          render json: @record.errors, status: :unprocessable_entity
        end
      end

      def update
        if @record.update(record_params)
          render json: @record
        else
          render json: @record.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @record.destroy
      end

      private
      def set_record
        @record = current_user.records.find(params[:id])
      end

      def record_params
        params.require(:record).permit(:title, :year, :artist_id)
      end
    end
  end
end
