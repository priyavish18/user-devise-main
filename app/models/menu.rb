class Menu < ApplicationRecord
	belongs_to :user
	has_many :order_items
	has_many :orders
	has_one_attached :image

end



def self.search_by_rate(search)
	if search
		search_rate = search.to_i
		if self.where({rate: 0..search_rate})
			self.where({rate: 0..search_rate}).sort_by{menu| menu.rate}
		else
			Menu.all
			
		end
	else
        Menu.all
        #check



    end
   end