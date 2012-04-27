# encoding: utf-8
require 'csv'

namespace :export do

  desc 'export financial data'

  task :csv => :environment do
    
    CSV.open("export.csv", "w") do |csv|
      csv << ["amount", "date", "spender", "recipient"]
      
      Agency.all.each do |agency|
        agency.financial_datas.each do |fd|
          csv << [fd.grosscosts, Date.new(fd.year).to_s, agency.directorate.name, agency.name]
        end
      end
      
    end    
  end
end