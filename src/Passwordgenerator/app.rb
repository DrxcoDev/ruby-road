def generate_password(length, use_uppercase, use_numbers, use_symbols)

    lowercase = ('a'..'z').to_a
    uppercase = ('A'..'Z').to_a
    numbers = ('0'..'9').to_a
    symbols = %w[! @ # $ % ^ & * ( ) _ +]

    characters = lowercase
    characters += uppercase if use_uppercase
    characters += numbers if use_numbers
    characters += symbols if use_symbols

    # Generar la contraseña
    password = ''
    length.times { password += characters.sample }
    password
end

def prompt_user
    puts 'Generador de Contraseñas Seguras en Ruby'
    print 'Longitud de la contraseña (por ejemplo, 12): '
    length = gets.chomp.to_i
  
    print '¿Incluir letras mayúsculas? (S/N): '
    use_uppercase = gets.chomp.downcase == 's'
  
    print '¿Incluir números? (S/N): '
    use_numbers = gets.chomp.downcase == 's'
  
    print '¿Incluir símbolos? (S/N): '
    use_symbols = gets.chomp.downcase == 's'
  
    [length, use_uppercase, use_numbers, use_symbols]
end

# Solicitar opciones al usuario
length, use_uppercase, use_numbers, use_symbols = prompt_user

# Generar la contraseña
password = generate_password(length, use_uppercase, use_numbers, use_symbols)

# Mostrar la contraseña generada
puts "\nTu contraseña generada es: #{password}"

  