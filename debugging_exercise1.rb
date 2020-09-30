def say_hello(name)
  puts "hello #{name}"
end
say_hello("kris")

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char).to_i).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  p "this is ciphertext: #{ciphertext}"
  p "this is key: #{key}"
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  p "__________"
p "this is cipher: #{cipher}"
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  p "this is plaintext_chars #{plaintext_chars}"
  plaintext_chars.join
end


# p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
