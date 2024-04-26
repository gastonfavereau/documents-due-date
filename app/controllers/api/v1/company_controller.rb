class Api::V1::CompanyController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    render json: Company.all, status: 200
  end

  def show
    record = Company.find_by(id: params[:id])
    if record
      render json: record, status: 200
    else
      render json: {error: "id not found"}, status: 400
    end
  end

  def create
    record = Company.new(record_params)
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
        :email,
        :phone,
        )
  end  
end
