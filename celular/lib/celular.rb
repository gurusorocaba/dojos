#encoding: utf-8

class Celular
  MAP = {
    " " => '0',
    "A" => '2',
    "Ã" => '2',
    "ã" => '2',
    "B" => '22',
    "C" => '222',
    "D" => '3',
    "E" => '33',
    "F" => '333',
    "G" => '4',
    "H" => '44',
    "I" => '444',
    "J" => '5',
    "K" => '55',
    "L" => '555',
    "M" => '6',
    "N" => '66',
    "O" => '666',
    "P" => '7',
    "Q" => '77',
    "R" => '777',
    "S" => '7777',
    "T" => '8',
    "U" => '88',
    "V" => '888',
    "W" => '9',
    "X" => '99',
    "Y" => '999',
    "Z" => '9999'
  }

  def self.traduz(text)
    return "" if text.nil?

    result = ""
    text.upcase.split("").each do |letter|
      number = (MAP[letter]||'')

      if !result[-1].nil? && (result[-1] == number[0]) 
        result += "_"
      end

      result += number
    end

    result 
  end
end
