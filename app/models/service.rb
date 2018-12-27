class Service < ApplicationRecord
	belongs_to :spa
	enum service_type: {
    	内湯:1,露天風呂:2,サウナ:3,岩盤浴:4,料理:5,エステ:6,その他:7
  	}

  	def service_name_and_service_type
    	self.service_name + '(' + self.service_type + ')'
  	end
end
