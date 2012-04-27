class Directorate < Financial
  belongs_to :city, :foreign_key => :financials_id
  has_many :agencies, :foreign_key => :financials_id
end