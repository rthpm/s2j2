# frozen_string_literal: true

print("Combien d'email à générer ?\n> ")
numb = gets.chomp
i = 0

abort('Ça fait beaucoup trop !') if numb.to_i > 50

Array
  .new(numb.to_i / 2) do |i|
    "jean.dupont.#{((i + 1) * 2).to_s.rjust(2, '0')}@email.fr"
  end
  .each { |email| puts email }
