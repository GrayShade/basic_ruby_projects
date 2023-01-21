def caesar_cipher(str, shft_factr)
  alphas_hash = {}
  ('a'..'z').to_a.each_with_index { |ele, idx| alphas_hash[idx] = ele }
  new_str = str.split('').map do |ele|
    if alphas_hash.value?(ele.downcase)
      alphabat_index = alphas_hash.key(ele.downcase)
      difference = alphabat_index + shft_factr
      if difference > 25
        difference -= 25
        shifted_ele = alphas_hash[difference - 1]
      else
        shifted_ele = alphas_hash[alphabat_index + shft_factr]
      end
      # if original char was upperCase, Covert the new one too:
      ele.upcase == ele ? shifted_ele = shifted_ele.upcase : shifted_ele
      shifted_ele
    else
      ele # for non alphabet chars
    end
  end
  new_str.join('')
end
puts 'Input string to cipher:'
cipher = gets.chomp
shft_factr = nil
while shft_factr != shft_factr.to_i.to_s
  puts 'Input shift factor:'
  shft_factr = gets.chomp
end
puts caesar_cipher(cipher, shft_factr.to_i)
