class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name, presence:true, length:{minimum:5, maximum:500}
	validates :email, presence:true, format:{with:VALID_EMAIL_REGEX}, uniqueness:{case_sensitive:false}
	validates :password, length:{minimum:6, maximum:20}

	before_save {self.email = email.downcase}

	has_secure_password	
end
