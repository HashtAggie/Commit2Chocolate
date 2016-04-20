class Product < ActiveRecord::Base


  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    where("category ILIKE ?", "%#{search}%")
  end
end
