require('pry')

class String
  define_method (:leetspeak) do
    letters = self.split("")
    new_word = ""
    letters.each() do |letter|
      if (letter.downcase()).==("e")
        new_word.concat("3")
      elsif (letter.downcase()).==("o")
        new_word.concat("0")
      elsif letter.==("I")
        new_word.concat("1")
      elsif (letter.downcase()).==("s")
          if letter.!=(letters.at(0))
            new_word.concat("z")
          else
            new_word.concat(letter)
          end
      else
        new_word.concat(letter)
      end
    end
   new_word
  end
end
