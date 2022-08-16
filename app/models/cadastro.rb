class Cadastro < ApplicationRecord

  def birthday(day)
    day 
    if day == Date.today
      puts 'É hoje'
    end
  end

end
