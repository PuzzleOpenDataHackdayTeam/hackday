class Financial < ActiveRecord::Base
  attr_accessible :name, :id_number
  has_many :financial_datas
end
