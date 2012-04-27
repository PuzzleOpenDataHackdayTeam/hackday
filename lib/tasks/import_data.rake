# encoding: utf-8
require 'csv'
require 'awesome_print'

desc 'import financial data'

task :import_data => :environment do
  csv = CSV.read('lib/assets/data.csv')
  
  summaries = []
  
  csv.each_with_index{ |item, index| summaries << index if item[1] == 'Übersicht'}
  
  current_directorate = nil
   
  summaries.each do
    |i|
    
    # finding out what it is
    number = csv[i-2][0]
    
    
    if /\d{4}/.match number
      directorate = Directorate.create(:id_number => csv[i-2][0].to_i, :name => csv[i-2][1])
      
      for x in [3,5,6,8]
        brutto  = csv[i+4][x].gsub(/,/, '').to_f
        erloese = csv[i+6][x].gsub(/,/, '').to_f
        year    = csv[i+3][x].gsub(/,/, '').to_f
        fixed   = csv[i+2][x] == 'Rechnung'
        
        directorate.financial_datas.create(:grosscosts => brutto, :income => erloese, :year => year, :fixed => fixed) 
      end
      
      current_directorate = directorate
    elsif /\d{3}/.match number
      agency = Agency.create(:id_number => csv[i-2][0].to_i, :name => csv[i-2][1], :financials_id => current_directorate.id)
      
      for x in [3,5,6,8]
        brutto  = csv[i+4][x].gsub(/,/, '').to_f
        erloese = csv[i+6][x].gsub(/,/, '').to_f
        year    = csv[i+3][x].gsub(/,/, '').to_f
        fixed   = csv[i+2][x] == 'Rechnung'
        
        agency.financial_datas.create(:grosscosts => brutto, :income => erloese, :year => year, :fixed => fixed) 
      end
    end
  end 
end