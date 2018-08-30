class Client < ApplicationRecord
		has_many :events
		has_many :windows_events
end
