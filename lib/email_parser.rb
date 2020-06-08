# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser 

    attr_accessor :emails

    def initialize(list_of_emails)
       
        @emails = list_of_emails

    end


    def parse
        
        store_emails = []

        if @emails.include?(",") && !@emails.include?(" ")
            store_emails << @emails.split(",")
        elsif @emails.include?(" ") && !@emails.include?(", ")
            store_emails << @emails.split(" ")
        elsif @emails.include?(" ") && @emails.include?(", ")
            store_emails << @emails.split(",").join.split(" ")
            
        end
       

        store_emails.flatten.uniq
        
    end

end