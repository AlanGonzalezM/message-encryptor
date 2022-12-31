# frozen_string_literal: true

class Encryptor
  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def supported_characters
    (' '..'z').to_a
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    letters = string.split('')

    results = letters.collect do |letter|
      encrypt_letter(letter, rotation)
    end
    results.join
  end

  def decrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def decrypt(string, rotation)
    letters = string.split('')

    results = letters.collect do |letter|
      decrypt_letter(letter, -rotation)
    end
    results.join
  end

  def encrypt_file(filename, rotation)
    input = File.open(filename, 'r')
    input.rewind
    message = input.read
    output_message = File.open(filename + '.encrypted', 'w')
    output_message.write(encrypt(message, rotation))
    output_message.close
  end

  def decrypt_file(filename, rotation)
    input = File.open(filename, 'r')
    input.rewind
    message = input.read
    output_filename = filename.gsub('encrypted', 'decrypted')
    output_message = File.open(output_filename, 'w')
    output_message.write(decrypt(message, rotation))
    output_message.close
  end

  def crack(message)
    supported_characters.count.times.collect do |attempt|
      decrypt(message, attempt)
    end
  end
end
