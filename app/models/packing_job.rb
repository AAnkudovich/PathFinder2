class PackingJob < ActiveRecord::Base
	belongs_to :user
	belongs_to :shopping_order, dependent: :destroy
end
