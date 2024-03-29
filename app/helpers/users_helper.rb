module UsersHelper

	def gravatar_for(user)
		g_id = Digest::MD5::hexdigest(user.email.downcase)
		g_url = "https://secure.gravatar.com/avatar/#{g_id}"
		image_tag(g_id, alt: user.name, class: "gravatar")
	end

end
