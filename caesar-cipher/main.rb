require 'pry'

def caesar_cipher(string, shift)
    string_characters = string.bytes
    shifted_chars = string_characters.map do |character|
      unless ((character >= 65 && character <= 90) || (character >= 97 && character <= 122))
        character
      else
        shifter(character, shift)
      end
    end
    final_chars = shifted_chars.map {|char| char.chr}.join('')
    return final_chars
end

def shifter(character, shift)
  if shift < 0
    
  else
    if shift > 25
      shift = shift % 25
    end

    if character >= 97
      if (character + shift) > 122
        shift -= 122 - character
        return 97 + shift
      else
        return character + shift
      end
    else
      if (character + shift) > 90
        shift -= 90 - character
        return 65 + shift
      else
        return character + shift
      end
    end
  end
end

p caesar_cipher("Amongnugn", 52)