class Product < Financial
  belongs_to :product_group, :foreign_key => :financials_id
end