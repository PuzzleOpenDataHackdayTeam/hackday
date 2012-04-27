class Agency < Financial
  belongs_to :directorate, :foreign_key => :financials_id
  has_many :product_groups, :foreign_key => :financials_id
end