def caesar_cipher(string, shift_key)
  string.each_char { |char|
    char_ascii = char.ord
    factor = char_ascii <= 90 ? 65 : 97    
    if char_ascii.between?(65, 90) || char_ascii.between?(97, 122)
      cip_ascii = (((char_ascii - factor) + shift_key) % 26) + factor
      print cip_ascii.chr
    else
      print char
    end
  }
  puts "\n"
end

caesar_cipher("Ayo serang markas Jerman!!!", 8)