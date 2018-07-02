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

ActiveRecord::Schema.define(version: 2018_07_02_130725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "contacts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.string "telephone"
    t.string "email"
    t.string "type_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "demande_enrolement_rgpd_id"
    t.index ["demande_enrolement_rgpd_id"], name: "index_contacts_on_demande_enrolement_rgpd_id"
  end

  create_table "demandes_enrolements_rgpd", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "siret_organisme_demandeur"
    t.text "description_organisme_demandeur"
    t.json "perimetre_donnees"
    t.text "destinataires_donnees"
    t.text "informations_complementaires"
    t.string "lu_et_approuve_dpd"
    t.boolean "acceptation_cgu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "demarches_administratives", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "intitule"
    t.text "description"
    t.text "cadre_juridique"
    t.integer "nombre_mois_conservation_donnees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "demande_enrolement_rgpd_id"
    t.index ["demande_enrolement_rgpd_id"], name: "index_demarches_administratives_on_demande_enrolement_rgpd_id"
  end

end
