class Simplemath
    def self.operation
      puts "Entre operator ( +|-|*|/ )"
      operation = gets.chomp()

      puts "Entre first number"
      num1 = gets.chomp().to_i
      puts "Entre second number"
      num2 = gets.chomp().to_i

      if num1.is_a?(Integer) && num2.is_a?(Integer)
          case operation
          when "+"
            puts(num1 + num2)
          when "-"
            puts(num1 - num2)
          when "*"
            puts(num1 * num2)
          when "/"
            puts(num1/num2)
          else
            puts 'Invalid operation, bye'
          end
        else
          puts 'Invalid numbers, bye'
        end
      end
  end