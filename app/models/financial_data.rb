class FinancialData < ActiveRecord::Base
  attr_accessible :financial, :fixed, :grosscosts, :income, :year
end
