class Api::V1::ClientController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    render json: Client.all, status: 200
  end

  def show
    record = Client.find_by(id: params[:id])
    if record
      render json: record, status: 200
    else
      render json: {error: "id not found"}, status: 400
    end
  end

  def create
    record = Client.new(record_params)
    record.company_id = Company.first.id
    if record.save
      render json: record, status:200
    else
      render json: record.errors, status: 422
    end
  end

  private

  def record_params
    params.permit(
        :name,
        :tax_identification,
        :address,
        :email,
        :phone,
        :company_id
        )
  end

end
