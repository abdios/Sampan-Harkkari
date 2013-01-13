class Company < ActiveRecord::Base
  attr_accessible :kayntiosoite, :laskutusosoite, :nimi, :ytunnus
  has_many :employees
end
