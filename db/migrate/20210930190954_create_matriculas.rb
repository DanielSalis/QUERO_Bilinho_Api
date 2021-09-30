class CreateMatriculas < ActiveRecord::Migration[5.2]
  def change
    create_table :matriculas do |t|
      t.decimal :valor
      t.integer :quantidade_faturas
      t.integer :dia_vencimento

      t.timestamps
    end
  end
end
