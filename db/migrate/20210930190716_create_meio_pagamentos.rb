class CreateMeioPagamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :meio_pagamentos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
