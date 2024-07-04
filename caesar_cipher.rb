def caesar_cipher(text, shift)
    # Initialize an empty string to store the encrypted text
    encrypted_text = ""
  
    # Loop through each character in the input text
    text.each_char do |char|
      # Check if the character is a lowercase letter
      if char.match(/[a-z]/)
        # Calculate the new character after applying the shift
        new_char = (((char.ord - 'a'.ord + shift) % 26) + 'a'.ord).chr
        encrypted_text += new_char
      # Check if the character is an uppercase letter
      elsif char.match(/[A-Z]/)
        # Calculate the new character after applying the shift
        new_char = (((char.ord - 'A'.ord + shift) % 26) + 'A'.ord).chr
        encrypted_text += new_char
      else
        # If the character is not a letter, add it to the encrypted text unchanged
        encrypted_text += char
      end
    end
  
    # Return the encrypted text
    encrypted_text
  end
  
  # Example usage:
  text = "Hello, World!"
  shift = 3
  puts caesar_cipher(text, shift)  # Output: "Khoor, Zruog!"
  