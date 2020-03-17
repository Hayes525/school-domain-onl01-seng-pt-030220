class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, level)
#     # this sort of means #=> a || a = b ... or #=> x || x = y
#     # it's freak'n weird
    roster[level] ||= []
    roster[level] << student
  end 
  def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
end 
  
# # This works, but it isn't passing learn.co's tests cause of 
# # how it displays syntactically...but the same information is there
# #  def sort 
# #    roster.sort_by do |x, y| 
# #      x 
# #    end 
# # #  end 

# # # Here's learn.co's solution:
# # def sort 
# #   nu_hash = {}
# #   roster.each do |x, y| 
# #     nu_hash[x] = y.sort 
# #   end 
# #   nu_hash
# # end 
  
# # end 



# # school = School.new("Bayside High School")
# # school.roster
# # school.add_student("Zach Morris", 9)
# # school.add_student("Moshe Zeus", 9)
# # school.add_student("Onkelos Octavius", 9)
# # school.roster
# # school.add_student("Sugar Zaza", 5)
# # school.roster
# # school.add_student("Theo Madus", 5)
# # school.add_student("Abbah Zabbah", 2)
# # school.roster
# # school.grade(9)
# # school.sort





# class String

#   def sentence?
#     if self.end_with?(".")
#       true
#     else
#       false
      
#     end

#   end
 
#   def question?
#     self.end_with?("?") ? true : false
#   end

#   def exclamation?
#     self.end_with?("!") ? true : false 
#   end

#   def count_sentences
    
#     self.split(" ").length
#   end
# end


# s = String.new("one, two, three")
# s

# complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
# #   # expect(complex_string.count_sentences).to eq(4)
  
# # #   complex_string.count_sentences
# # # "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
# complex_string.split(/[.?!]/)


# class CashRegister 
    
#     attr_reader :total, :emp_discount

#     def initialize (emp_discount=0)
       
#         @total = 0
#         @emp_discount = emp_discount
#     end

#     def add_item (item, price, quantity)
#         @total += price * quantity
#     end

# end 

# cash_register = CashRegister.new(20)
# cash_register.add_item("mango", 5)
# cash_register.total
 
 
class Song
 
  @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all.each do |song|
      puts song.name
    end
  end
end

sik_k = Song.new("rendevouz")
uh = Song.new("huh")
# sik_k.name
Song.all

 
