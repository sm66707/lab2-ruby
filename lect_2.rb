class User 
  @@name='User'
  def initialize(n)
      @name=n
  end
  def self.name()
      @@name
  end 
  def self.name=(value)
      @@name=value
  end 
  def getname()
      @name
  end
  def setname=(value)
      @name=value
  end
end
# user1=User.new("Salma")
# puts user1.getname
# puts User.name

class Maths
 def initialize(n1,n2)
    @number1, @number2 = n1, n2
 end
 def self.calc(n1,n2,op)
  flag = false
  if n1.is_a?(Numeric) && n2.is_a?(Numeric)
    if %w[+ - * /].include? op
      flag = true
    else
      puts 'Invalid Operator'
    end
  else
    puts 'Invalid Numbers'
  end
  if flag
    case op
    when '+'
    puts n1+n2
    when '-'
    puts n1-n2
    when '*'
    puts n1*n2
    when '/'
    puts n1/n2
    end
  else
      puts 'Error'
      flag = false
  end
end
end
# Maths.calc(1,2,"+")
# Maths.calc(5,2,"-")
# Maths.calc(8,2,"/")
# Maths.calc(3,2,"*")

module MyModule
  require 'date'
  class Person
      attr_accessor :fname, :lname, :bdate, :age
      def initialize()
          @fname=""
          @lname=""
          @bdate=Date.today
          @age=0
      end
      def getData
          puts "Enter first name:"
          @fname=gets.chomp
          puts "Enter last name:"
          @lname=gets.chomp
          puts "Enter BirthDay:"
          @bdate=Date.parse(gets.chomp)
          now=Time.now.utc.to_date
          @age = now.year - @bdate.year - (now.month > @bdate.month || (now.month == @bdate.month && now.day >= @bdate.day) ? 0 : 1)
      end
      def welcome
          puts "Welcome dear #@fname #@lname"
          now = Time.now.utc.to_date
          this_year_birthday = @bdate
          this_year_birthday = Date.parse("#{now.year}-#{@bdate.month}-#{@bdate.day}")
          days = (now - this_year_birthday).to_i
          if days < 0
            days += 365
          end
          months = (days/30).to_i
    
          puts "Your age is: #@age years, #{months} months and #{days%30} days"
        end
    
      end
    end
    
person = MyModule::Person.new()
person.getData()
puts person.age
puts person.welcome()