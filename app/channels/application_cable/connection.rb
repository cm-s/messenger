module ApplicationCable
	class Connection < ActionCable::Connection::Base
		# Siehe http://guides.rubyonrails.org/action_cable_overview.html Abschnitt 3.1.1
		# Die Logik stellt sicher, dass nur angemeldeten Benutzer eine Verbindung herstellen können
	end
end
