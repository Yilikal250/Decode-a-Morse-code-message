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


