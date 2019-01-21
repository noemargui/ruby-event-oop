=begin
require "pry"
=end

class User
  attr_accessor :email
  @@email_stock = []

  def initialize(email_to_save)
    @email = email_to_save
    @@email_stock << @email #variable de classe
  end

  def self.all
    return @@email_stock
  end

  def self.find_by_email(email_to_save)
  	return User.new(email_to_save)
  end

end

=begin
binding.pry
puts "end of file"
=end