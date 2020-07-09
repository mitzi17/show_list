
module ShowList
    class Show
      attr_accessor :name, :summary

      @@all = nil

      def self.all
        @@all || self.load
      end

      def self.load
        #to collect an array of show instances we use the collect method here
        API.get_shows.collect do |show_hash|
          Show.new(show_hash)
        end
      end

      def initialize(attributes = { }) #here initialize takes in a hash as an argument
        @name = attributes["name"]
        @summary = attributes["summary"]
      end
 
    end
end

