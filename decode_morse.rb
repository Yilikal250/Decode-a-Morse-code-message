# Set to dictionary file to load
MORSE_DICT = hash[
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..',
  ' ' => ' ',
]

# Method to decode a Morse code character.
def decode_char(char)
  @char = ''
  MORSE_DICT.each do |key, value|
    @char = value if key == char
  end
  @char
end

# Method to decode an entire word in Morse code.
def decode_word(word)
  @full_word = word.split
  @word = ''
  @full_word.each do |morse_code|
    @word += decode_char(morse_code).to_s
  end
  @word
end

puts decode_char('.-').upcase
puts decode_word('-- -.--').upcase
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...').upcase

# Method to decode the entire message in Morse code.
def decode(message)
  @full_message = message.split('   ')
  @final_message = ''
  @full_message.each do |morse_code_message|
    @final_message += "#{decode_word(morse_code_message)} "
  end
  @final_message
end
