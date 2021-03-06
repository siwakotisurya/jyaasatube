module JyaasaTubesHelper
	def user_check
		if user_signed_in?
  		"Logged in as <strong> #{current_user.email}</strong>.".html_safe + "  |  " +
  		link_to("View Channel", channels_path, :class => "navbar-link")+ "|  "+
  		link_to("New Channel", new_channel_path, :class => "navbar-link")+ "|  "+
  		link_to('Edit profile', edit_user_registration_path, :class => 'navbar-link')+ "  |  " +
  		link_to("Logout", destroy_user_session_path, method: :delete, :class => "navbar-link")
		else
  		link_to("Sign up", new_user_registration_path, :class => "navbar-link") +" | "+
  		link_to("Login", new_user_session_path, :class => "navbar-link")
 		end
	end
end
