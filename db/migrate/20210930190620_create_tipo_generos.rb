class CreateTipoGeneros < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_generos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
