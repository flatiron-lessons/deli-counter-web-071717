katz_deli = []
other_deli = []

# # #
# Function : line(katz_deli)
# 	Inputs : katz_deli (current line)
# 	Outputs: if 0 => "empty line"
# 			 if>0 => ["John", "Dave", "Emily"]
# # #
def line(deli)

  string = "The line is currently"

  if deli.length == 0
    string << " empty."
    puts string
  else
    string << ":"
    i = 0
    until i == deli.length
      string << " #{i+1}. #{deli[i]}"
      i+=1
    end
    puts string
  end
end

# # #
# Function : take_a_number(deli_name, name)
# 	Inputs : deli_name (if katz_deli, = current line), name (person joining line)
# 	Outputs: Name + position in line
# # #
def take_a_number(deli, name)

	in_line = deli.length+1 # Your pos. in line = length + 1 new person

	puts "Welcome, #{name}. You are number #{in_line} in line."
	deli.push(name) # add "" of name + pos. in line to deli_line

end

# # # #
# # Function :
# # 	Inputs :
# #   Outputs:
# # # #
def now_serving(line)

	now_serving = []

	if line.length == 0
		puts "There is nobody waiting to be served!"
	else
		now_serving.push(line[0]) # Push the next person in line to a diff line
		line.delete_at(0) # Remove that person from the line
		puts "Currently serving #{now_serving[0]}." # Call them from the new line
	end
end
