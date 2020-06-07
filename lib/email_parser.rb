require "pry"


# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_address
  
  
  
  def initialize(email_address)
    
    @email_address = email_address
   
  
    end  
  
  
  def parse
    
    puts splitEmail = email_address.split.collect {|address| address.split(',')} 
  new_array = splitEmail.flatten.uniq
  new_array
  
  end  
  
  
  
  
  
  
  
end  