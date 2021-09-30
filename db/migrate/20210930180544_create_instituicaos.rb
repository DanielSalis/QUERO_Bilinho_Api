class CreateInstituicaos < ActiveRecord::Migration[5.2]
  def change
    create_table :instituicaos do |t|
      t.text :nome, null: false, index: {unique: true}
      t.text :cnpj, limit: 14, index: {unique: true}
      t.references :tipo_instituicoes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
