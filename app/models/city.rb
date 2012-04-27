class City < Financial
  has_many :directorates, :foreign_key => :financials_id
end