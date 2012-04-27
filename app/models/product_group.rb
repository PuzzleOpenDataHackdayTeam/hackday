class ProductGroup < Financial
  belongs_to :agency, :foreign_key => :financials_id
  has_many :products, :foreign_key => :financials_id
end