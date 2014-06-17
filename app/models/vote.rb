class Vote < ActiveRecord::Base
	belongs_to :tema
	belongs_to :user
end
