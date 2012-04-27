class FinancialData < ActiveRecord::Base
  attr_accessible :grosscosts, :income, :year, :fixed
  belongs_to :financial
end
