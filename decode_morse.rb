# set to dictionary file to load


MORSE_CODE = Hash[
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

def decode_morse(morse_code)
  words = ''
  morse_code.split(' ').each do |letter|
    letter == ' '? words += MORSE_CODE.key(letter).to_s + ' ': words += MORSE_CODE.key(letter)
  end
  words
  puts words
end

decode_morse('-- -.--   -. .- -- .')

# Antonio's code

MORSE_DICT = Hash[
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
]

def decode_char(char)
  @char = ''
  MORSE_DICT.each do |key, value|
    @char = value if key == char
  end
  @char
end

def decode_word(word)
  @full_word = word.split
  @word = ''
  @full_word.each do |morse_code|
    @word += decode_char(morse_code).to_s
  end
  @word
end

def decode(message)
  @full_message = message.split('   ')
  @final_message = ''
  @full_message.each do |morse_code_message|
    @final_message += "#{decode_word(morse_code_message)}" + " "
  end
  @final_message
end

puts decode_char('.-').upcase
puts decode_word('-- -.--').upcase
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...').upcase
