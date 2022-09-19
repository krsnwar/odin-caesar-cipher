def caesar_cipher(string, shift_key)
  string.each_char { |char|
    char_ascii = char.ord
    if char_ascii.between?(65, 90)
      cip_ascii = char_ascii + shift_key
      if cip_ascii > 90
        cip_ascii = cip_ascii - 26
      elsif cip_ascii < 65
        cip_ascii = cip_ascii + 26
      end
      print cip_ascii.chr
    elsif char_ascii.between?(97, 122)
      cip_ascii = char_ascii + shift_key
      if cip_ascii > 122
        cip_ascii = cip_ascii - 26
      elsif cip_ascii < 97
        cip_ascii = cip_ascii + 26
      end
      print cip_ascii.chr
    else
      print char
    end
  }
  puts "\n"
end

caesar_cipher("Ayo serang markas Jerman", -8)