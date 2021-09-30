# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_30_190954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.text "nome"
    t.text "cpf"
    t.date "data_nascimento"
    t.integer "telefone_celular"
    t.bigint "tipo_generos_id", null: false
    t.bigint "meio_pagamentos_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meio_pagamentos_id"], name: "index_alunos_on_meio_pagamentos_id"
    t.index ["tipo_generos_id"], name: "index_alunos_on_tipo_generos_id"
  end

  create_table "instituicaos", force: :cascade do |t|
    t.text "nome", null: false
    t.text "cnpj"
    t.bigint "tipo_instituicoes_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cnpj"], name: "index_instituicaos_on_cnpj", unique: true
    t.index ["nome"], name: "index_instituicaos_on_nome", unique: true
    t.index ["tipo_instituicoes_id"], name: "index_instituicaos_on_tipo_instituicoes_id"
  end

  create_table "matriculas", force: :cascade do |t|
    t.decimal "valor"
    t.integer "quantidade_faturas"
    t.integer "dia_vencimento"
    t.bigint "instituicaos_id", null: false
    t.bigint "alunos_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alunos_id"], name: "index_matriculas_on_alunos_id"
    t.index ["instituicaos_id"], name: "index_matriculas_on_instituicaos_id"
  end

  create_table "meio_pagamentos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_generos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_instituicoes", force: :cascade do |t|
    t.text "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alunos", "meio_pagamentos", column: "meio_pagamentos_id"
  add_foreign_key "alunos", "tipo_generos", column: "tipo_generos_id"
  add_foreign_key "instituicaos", "tipo_instituicoes", column: "tipo_instituicoes_id"
  add_foreign_key "matriculas", "alunos", column: "alunos_id"
  add_foreign_key "matriculas", "instituicaos", column: "instituicaos_id"
end
