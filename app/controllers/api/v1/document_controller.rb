class Api::V1::DocumentController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    render json: Document.all, status: 200
  end

  def show
    record = Document.find_by(id: params[:id])
    if record
      render json: record, status: 200
    else
      render json: {error: "id not found"}, status: 400
    end
  end

  def create
    record = Document.new(document_params)
    record.company_id = Company.first.id
    record.document_type_id = DocumentType.first.id
    record.currency_id = Currency.first.id
    record.transaction_id = Transaction.first.id
    if record.save
      render json: record, status:200
    else
      render json: record.errors, status: 422
    end
  end

  private

  def document_params
    params.permit(
        :issue_date,
        :due_date,
        :amount,
        :status,
        :currency_id,
        :document_type_id,
        :company_id,
        :transaction_id,
        :financial_institution_id
        )
  end

end
