class Financial < ActiveRecord::Base
  attr_accessible :name, :id_number, :financials_id
  has_many :financial_datas
end
