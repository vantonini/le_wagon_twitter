def pode_votar(idade)
    if idade >= 16
        puts "Você pode votar"
    else
        puts "Você ainda não pode votar"
    end
end

puts "Qual sua idade?"
idade = gets.chomp.to_i
pode_votar(idade)



