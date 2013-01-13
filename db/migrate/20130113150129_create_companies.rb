class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :nimi
      t.string :kayntiosoite
      t.string :laskutusosoite
      t.string :ytunnus

      t.timestamps
    end
  end
end
