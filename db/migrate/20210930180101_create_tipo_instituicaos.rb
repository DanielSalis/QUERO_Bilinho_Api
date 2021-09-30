class CreateTipoInstituicaos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_instituicaos do |t|
      t.text :nome

      t.timestamps
    end
  end
end
