require "time"

class EventCreator
	attr_accessor :title
	attr_accessor :start_time
	attr_accessor :length
	attr_accessor :attendees

	def title_event
		puts "Salut, tu veux créer un événement ? Cool !"
		puts "Commençons, quel est le nom de l'événement ?"
		title = gets.chomp
	end
	
	def start_time_event
		puts "Super, quand aura-t-il lieu ?"
		start_time = gets.chomp
	end

	def length_event
		puts "Au top, combien de temps en minutes va-t-il durer ?"
		length = gets.chomp
	end

	def attendees_event
		puts "Génial, qui va participer ? Balance leurs e-mails"
		attendees = gets.chomp
	end

	def greetings
		puts "Super, c'est noté, à bientôt !"
	end

end