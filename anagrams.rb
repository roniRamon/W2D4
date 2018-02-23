require 'byebug'
def first_anagram?(str, str2)
  return [str] if str.length <=1
  # debugger
  first = str[0]
  total = []
  prev = first_anagram?(str[1..-1], str2)
  p prev
  prev.each do |el|

    (0...el.chars.length).each do |i|

      total << el[0...i] + first + el[i..-1]
    end
  end

  total
  p prev
   # p prev










  # (prev + total).include?(str2)
  # j = 0
  # total = []
  #
  # while j < str.length
  #   first = str[j]
  #   newstr = str[0...j] + str[j..-1]
  #    (0...newstr.chars.length).each do |i|
  #       total << [str[0...i] + first + str[i..-1]]
  #     end
  #
  #   j += 1
  # end

end

p first_anagram?('hit','hi')
#
#
# def first_anagram?(str, str2)
#   # (str.chars.sort.join).include?(str2.chars.sort.join) && str.length == str2.length
#   j = 0
#   total = []
#
#   while j < str.length
#     first = str[j]
#      newstr = str[0...j] + str[j + 1..-1]
#      (0...newstr.chars.length).each do |i|
#        p str[0...i]
#        p first
#        p str[i..-1]
#         total << [str[0..i] + first + str[i...-1]]
#       end
#
#     j += 1
#   end
#   total
# end
#
# p first_anagram?('murder','redrumwerwerew')
