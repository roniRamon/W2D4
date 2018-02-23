def first_anagram?(str, str2)

  first = str[0]
  total = []
  prev = first_anagram?(str[1..-1], str2)
  prev.each do |el|

    (0...el.chars.length).each do |i|

      total << el[0...i] + first + el[i..-1]
    end
  end

  # p prev
  p total 
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
  total
end

p first_anagram?('hit','hi')
