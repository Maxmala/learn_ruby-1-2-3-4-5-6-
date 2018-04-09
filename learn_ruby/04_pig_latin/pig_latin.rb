def translate str
  alphabet = ('a'..'z').to_a
  voyelles = %w[a e i o u]
  consonnes = alphabet - voyelles

  if voyelles.include?(str[0])
    str + 'ay'
  elsif consonnes.include?(str[0]) && consonnes.include?(str[1])
    str[2..-1] + str[0..1] + 'ay'
  elsif consonnes.include?(str[0])
    str[1..-1] + str[0] + 'ay'
  else
    str # return unchanged
  end
end
def translate (sent)
    voyelles = %w{a e i o u}
    sent.gsub(/(\A|\s)\w+/) do |str|
            str.strip!
        while not voyelles.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
            str += str[0]
            str = str[1..-1]
        end
        str  = ' ' + str + 'ay'
    end.strip
end


