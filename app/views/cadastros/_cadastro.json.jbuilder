json.extract! cadastro, :id, :name, :phone, :email, :birth, :doc_cpf, :doc_rg, :goal, :bio, :found, :start_date, :end_date, :status, :created, :created_at, :updated_at
json.url cadastro_url(cadastro, format: :json)
