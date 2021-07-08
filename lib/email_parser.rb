# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
	attr_accessor :emails_string

	def initialize(emails_string)
		@emails_string = emails_string
	end

	def parse
		@emails_string.split(%r{,\s|\s}).uniq
	end
end