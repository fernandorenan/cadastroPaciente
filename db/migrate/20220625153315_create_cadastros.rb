class CreateCadastros < ActiveRecord::Migration[7.0]
  def change
    create_table :cadastros do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.date :birth
      t.string :doc_cpf
      t.string :doc_rg
      t.string :goal
      t.text :bio
      t.string :found
      t.date :start_date
      t.date :end_date
      t.boolean :status
      t.timestamp :created

      t.timestamps
    end
  end
end
