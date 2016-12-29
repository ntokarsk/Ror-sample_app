class User
  ##
  # creates attribute accessors corresponding t
  # o a user’s name and email address. 
  # This creates “getter” and “setter” methods
  # that allow us to retrieve (get) and assign
  # (set) @name and @email instance variables
  attr_accessor :firstName, :lastName, :email

  def initialize(attributes = {})
    @name  = attributes[:firstName]
    @lastName  = attributes[:lastName]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end

  def full_name
  	return "#{firstName} #{lastName}"  	
  end

  def setName(_firstName)
  	@firstName = _firstName
  end

  def getName 
  	return @firstName
  end
end

