# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Company.create(name: 'Company_1', email: 'Company_1@dominio.com', phone: 123_456_789,
               tax_identification: 'tax_identification')

User.create(name: 'User_1', user: '@user_1', email: 'Company_1@dominio.com', password: 'password', phone: 123_457_890,
            company_id: Company.first.id)

Client.create(name: 'Client_1', tax_identification: 'tax_identification',
              address: 'A address of client', email: 'Client_1@dominio.com',
              phone: 123_457_890, company_id: Company.first.id)

FinancialInstitution.create(name: 'Institución Financiera 1', description: 'Una larga descripción',
                            company_id: Company.first.id)

DocumentType.create([
                      { name: 'Cheque', description: 'Es un documento emitido a travez de una entidad bancaria',
                        company_id: Company.first.id },
                      { name: 'Pagare', description: 'Es un documento con el avál de un escribano público',
                        company_id: Company.first.id }
                    ])

Currency.create([
                  { name: 'Dolares', symbol: 'USD', company_id: Company.first.id },
                  { name: 'Euros', symbol: 'EUR', company_id: Company.first.id }
                ])

Transaction.create(date: Date.today, description: 'Una larga descripción', company_id: Company.first.id,
                   cliente_id: Client.first.id)

Document.create([
                  { issue_date: Date.today, due_date: Date.today + 15, amount: Random.random_number * 1_000_000, status: 'Pendiente',
                    currency_id: Currency.find_by(symbol: 'USD').id, company_id: Company.first.id, document_type_id: DocumentType.find_by(name: 'Cheque').id,
                    transactions_id: Transaction.first.id, financial_institutions_id: FinancialInstitution.first.id },

                  { issue_date: Date.today, due_date: Date.today + 30, amount: Random.random_number * 1_000_000, status: 'Pendiente',
                    currency_id: Currency.find_by(symbol: 'EUR').id, company_id: Company.first.id, document_type_id: Document.find_by(name: 'Pagare').id,
                    transactions_id: Transaction.first.id }
                ])