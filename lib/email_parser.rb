# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#class EmailAddressParser


#  def initialize(email)
#    @email = email
#  end

#  attr_accessor :emails



#  def parse

#    if @email.include?(",")
#      @email.split(", ")
#    else
#      @email.split(" ")
#    end
#  end
#end


class EmailAddressParser
attr_accessor :emails

def initialize(email)
  @emails = email
end

def parse
  emails.delete(',').split.uniq
end

end
