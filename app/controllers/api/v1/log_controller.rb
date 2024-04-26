class Api::V1::LogController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    render json: Log.all, status: 200
  end

  def show
    record = Log.find_by(id: params[:id])
    if record
      render json: record, status: 200
    else
      render json: {error: "id not found"}, status: 400
    end
  end

  def create
    record = Log.new(record_params)
    if record.save
      render json: record, status:200
    else
      render json: record.errors, status: 422
    end
  end

  private

  def record_params
    params.permit(
        :table_name,
        :record_id,
        :field_name,
        :value,
        :user_id
        )
  end

end
