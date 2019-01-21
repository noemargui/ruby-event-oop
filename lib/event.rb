=begin
require "pry"
=end
require "time"

class Event
	attr_accessor :start_date
	attr_accessor :attendees

	def initialize(start_time, length, title, attendees)
		@start_time = Time.parse(start_time)
		@length = length.to_i
		@title = title
		@attendees = attendees
	end

	def postpone_24h(start_time)
		@new_start_time = Time.parse(start_time) + 60 * 60 * 24 # pour tester : Event1.postpone_24h("2019-01-13 09:00") après avoir init Event1
	end

	def end_date(start_time, length)
		@end_date = Time.parse(start_time + length)
	end

	def is_past(start_time)
		if Time.parse(start_time) < Time.now
			return true
		else
			return false
		end
	end

	def is_future(start_time)
		!self.is_past(start_time)
	end

	def is_soon(start_time)
		if Time.parse(start_time) < (Time.now + 60 * 30) && Time.now < Time.parse(start_time)
			return true
		else
			return false
		end
	end

	def to_s(start_time, length, title, attendees)
		puts "Titre : #{title}"
		puts "Date de début : #{start_time}"
		puts "Durée : #{length} minutes"
		puts "Invités : #{attendees.join(", ")}"
	end

end

=begin
binding.pry
puts "end of file"
=end