class CreateMatriculas < ActiveRecord::Migration[5.2]
  def change
    create_table :matriculas do |t|
      t.decimal :valor
      t.integer :quantidade_faturas
      t.integer :dia_vencimento
      t.references :instituicaos, null: false, foreign_key: true
      t.references :alunos, null: false, foreign_key: true

      t.timestamps
    end
  end
end
