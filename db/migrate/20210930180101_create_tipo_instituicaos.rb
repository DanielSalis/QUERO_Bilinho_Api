class CreateTipoInstituicoes < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_instituicoes do |t|
      t.text :nome

      t.timestamps
    end
  end
end
