def caesar_cipher(string, shift_factor)
   shift_factor %= 26
   result = string.chars.map do |char|
   if char.match(/[A-Za-z]/)
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
       ((char.ord - base + shift_factor) % 26 + base).chr
     else
       char
     end
  end
   result.join
 end
