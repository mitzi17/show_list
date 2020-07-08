
module ShowList
    class Show
      attr_accessor :name, :description

      

      def initialize(name, description)
        @name = name
        @description = description
      end

      @@all = [
        Show.new("Friends", "an awesome show about friends in NYC")
      ]

      def self.all
        @@all
      end
    end
end

