# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    @@emails = ""

    def initialize(emails)
        @@emails = emails
    end

    def parse
        output = []
        rows = @@emails.split(/[, ]/)
        rows.each do |email|
            if !email.empty? && !output.include?(email)
                output << email.strip
            end
        end
        output
    end


end