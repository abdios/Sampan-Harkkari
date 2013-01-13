class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nimi
      t.string :email
      t.string :osoite
      t.string :tilinro
      t.string :puhnro

      t.timestamps
    end
  end
end
