class Api::V1::DocumentTypeController < ApplicationController
  
  protect_from_forgery with: :null_session
  
  def index
    render json: DocumentType.all, status: 200
  end

  def show
    record = DocumentType.find_by(id: params[:id])
    if record
      render json: record, status: 200
    else
      render json: {error: "id not found"}, status: 400
    end
  end

  def create
    record = DocumentType.new(record_params)
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
        :company_id,
        :name,
        :description
        )
  end

end
