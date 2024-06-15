def ceasar_cipher(string, shift)
  cipher = ('a'..'z').map { |char| char.ord - 'a'.ord }
  shift = shift.to_i 
 
  string_to_cipher = string.split("")
  encrypted_string = []
  string_to_cipher.each do |char|
    if ('A'..'Z').include?(char) 
      original_index = char.ord - 'A'.ord   
      new_index = (original_index + shift) % 26   
      encrypted_char = ('A'.ord + cipher[new_index]).chr
      encrypted_string << encrypted_char
    elsif ('a'..'z').include?(char) 
      original_index = char.ord - 'a'.ord   
      new_index = (original_index + shift) % 26   
      encrypted_char = ('a'.ord + cipher[new_index]).chr
      encrypted_string << encrypted_char
    else 
      encrypted_string << char
    end
  end 
  encrypted_string.join("")
end

def decrypt_ceasar_cipher(encrypted_text, shift)
  shift = shift.to_i % 26
  ceasar_cipher(encrypted_text, -shift)
end

puts "Type your word or phrase"
string = gets.chomp
system('clear') || system('cls')
puts "Enter a number"
shift = gets.chomp
system('clear') || system('cls')
encrypted_text = ceasar_cipher(string, shift)
decrypted_text = decrypt_ceasar_cipher(encrypted_text, shift)
puts "Your encrypted text is #{encrypted_text}"
puts "Decrypted: #{decrypted_text}"


