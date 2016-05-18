class Food < ActiveRecord::Base
	belongs_to :menu
	validates :kind, :description, :menu, presence: true
end
