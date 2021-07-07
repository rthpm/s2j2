# frozen_string_literal: true

print "En quelle année es-tu né(e) ?\n> "
year = gets.chomp.to_i

if year.zero?
  abort("Et ton année de naissance ?\n")

elsif year == Time.new.year
  abort("Tu es trop jeune !\n")

end

while year <= Time.new.year
  puts year
  year += 1
end
