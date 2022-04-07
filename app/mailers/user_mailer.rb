class UserMailer < ApplicationMailer


	def welcome(user)
		@user = user
		mail to: @user.email, subject: "Food-Zone - you are registerd succesfully", from: "priyavish9926@gmail.com"



	end
end
