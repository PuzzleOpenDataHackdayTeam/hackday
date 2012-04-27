require 'csv'

desc 'import financial data'

task :import_data do
  csv = CSV.read('lib/assets/data.csv')
  
  summaries = []
  
  csv.each_with_index{ |item, index| summaries << index if item[1] == 'Übersicht'}
  
  summaries.each do
    |i|
    
    # finding out what it is
    number = csv[i-2][0]
    
    if /\d{4}/.match number
      
    elsif /\d{3}/.match number
      
    end
    
    #TODO number = csv[i-2][0]
    #TODO name = csv[i-2][1]
    
    #TODO numbers: brutto = csv[i+4][3]
    #TODO numbers: erloese = csv[i+6][3]
    
    #TODO numbers: brutto = csv[i+4][4]
    #TODO numbers: erloese = csv[i+6][4]
    
    #TODO numbers: brutto = csv[i+4][5]
    #TODO numbers: erloese = csv[i+6][5]
    
    #TODO numbers: brutto = csv[i+4][6]
    #TODO numbers: erloese = csv[i+6][6]
  end 
end