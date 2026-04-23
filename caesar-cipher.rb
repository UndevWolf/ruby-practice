def cipher(string,num)
  string.split("")
  .map {|letter| 
    if (("A".."z").include?(letter) || ("0".."9").include?(letter)) 
    num.times { 
      letter = letter.succ
      letter.slice!(0) if letter.length > 1 
    }
    end
    letter = letter
    }
  .join()
end

puts ("Enter your string: ")
string = gets.chomp
puts ("How many times: ")
num = gets.chomp.to_i

puts cipher(string,num)