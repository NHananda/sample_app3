class CreateBiodata < ActiveRecord::Migration
  def change
    create_table :biodata do |t|
      t.string :nama
      t.text :ttl
      t.text :alamat

      t.timestamps null: false
    end
  end
end
