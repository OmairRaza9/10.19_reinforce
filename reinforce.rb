
seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def seating_in_class(matrix)
  matrix.each_with_index do |row,  r_index|
    row.each_with_index  do |seat, s_index|
      if seat == nil
        puts "You can sit in row #{r_index + 1} seat #{s_index + 1}. Would you like to sit here? y/n"
        sit_answer = gets.chomp
        if sit_answer = 'y'
          puts "Cool, what is your name?"
          name = gets.chomp
          row[s_index] = name
          p matrix
#        elsif sit_answer = 'n'

          return
        end
      end
    end
  end
end

p seating_in_class(seats)
