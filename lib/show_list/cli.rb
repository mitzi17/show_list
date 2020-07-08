
module ShowList
    class CLI
        def start
            puts "hey welcome to the showlist CLI"
            @input = nil
            menu
            while @input != "exit" && @input != "quit"
            @input = gets.chomp
            if @input == "menu"
                menu
            elsif @input == "1"
                puts "print list of shows"
            elsif @input == "2"
                puts "print list of networkds"
            elsif @input == "exit" || @input == "quit"
            else
                puts "whooops, didn't understand that. type menu to see a list of optons"

            end
        end
        puts "Thanks for checking out our CLI"
        end

        def menu
            puts <<-MENU
            1. list show
            2. list networks
            3. menu
            or type "exit" or "quit" at any time to leave program.
            MENU
        end
    end
end