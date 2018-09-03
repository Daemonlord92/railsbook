module ApplicationHelper
	def login_helper style = ''
		if user_signed_in?
			(link_to "Edit Profile", edit_user_registration_path, class: style) + ' ' +
			(link_to "Logout", destroy_user_session_path, method: :delete, class: style)
		else
			(link_to "Register", new_user_registration_path, class: style) + ' ' +
			(link_to "Sign In", new_user_session_path, class: style)
		end
	end
end
