class EmailAddressParser
  attr_accessor :cvs
  
  def initialize(cvs)
    @cvs = cvs
  end
  
  def parse
    @cvs = @cvs.gsub(/[\s,]/ ," ").split
    
    @cvs.uniq
  end
  
end



# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
