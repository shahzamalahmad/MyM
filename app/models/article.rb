class Article < ApplicationRecord
	belongs_to :user, optional: true 

	validates :mosque_name, presence: true
	validates :mobile_no, length: { maximum: 10, minimum: 10 }

end
