class Event < ApplicationRecord
	belongs_to :client
	default_scope -> { order('created_at DESC') }
	validates :client_id, presence: true
	has_many :windows_events
end
