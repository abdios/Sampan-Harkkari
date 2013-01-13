class Employee < ActiveRecord::Base
  attr_accessible :email, :nimi, :osoite, :puhnro, :tilinro, :company_id

  belongs_to :company
end
