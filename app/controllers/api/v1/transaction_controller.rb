class Api::V1::TransactionController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    render json: Transaction.all, status: 200
  end

  def show
    record = Transaction.find_by(id: params[:id])
    if record
      render json: record, status: 200
    else
      render json: {error: "id not found"}, status: 400
    end
  end

  def create
    record = Transaction.new(record_params)
    record.company_id = Company.first.id
    record.client_id = Client.first.id
    if record.save
      render json: record, status:200
    else
      render json: record.errors, status: 422
    end
  end

  private

  def record_params
    params.permit(
      :date,
      :description,
      :company_id,
      :client_id
      )
  end

end
