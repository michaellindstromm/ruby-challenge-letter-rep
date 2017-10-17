def only_letters(a) 
    if a.class == String
        b = a.gsub(/[^a-zA-Z]/, '')
        b
    else
        false
    end
end

def alpha_repeat(a)
    if only_letters(a) == false

    else
        b = only_letters(a).split('')
        alphabet = [*'a'..'z']
        in_order = b.sort { |a, b| a <=> b}
        last_letter = in_order[in_order.length - 1]
        how_long_am_i_running = alphabet.index(last_letter) + 1

        how_long_am_i_running.times do |x|
            puts b.join('')
            b.each do |letter|
                if letter == alphabet[x]
                    b[b.index(letter)] = ' '
                else
                    
                end
            end
        end
    end
end

