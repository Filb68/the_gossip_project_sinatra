require 'csv'

class Gossip

    attr_reader :author, :content

    def initialize(content, author)
        @content = content
        @author = author
    end



    def save
      CSV.open("./db/gossip.csv", "ab") do |csv|
        csv << [@author, @content]
      end
    end
end








# class Gossip
#     def save
#       CSV.open("./db/gossip.csv", "ab") do |csv|
#         csv << ["Mon super auteur", "Ma super description"]
#       end
#     end
# end


 