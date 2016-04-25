class ItemComment < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	belongs_to :item
end
