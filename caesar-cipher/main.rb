def caesar_cipher(string, shift)
  string_characters = string.bytes
  string_characters.map do |char|
    shift_counter = shift 
    unless ((char >= 65 && char <= 90) || (char >= 97 && char <= 122))
      char
    else
      until shift_counter == 0
        if shift_counter < 0
          unless (char == 65) || (char == 97)
            shift_counter += 1
            char -= 1
          else
            shift_counter += 1
            char += 25
          end
        else
          unless (char == 122) || (char == 90)
            shift_counter -= 1
            char += 1
          else
            shift_counter -= 1
            char -= 25
          end
        end
      end
    end
    char.chr
  end
end

p caesar_cipher("A z Z a", -51)