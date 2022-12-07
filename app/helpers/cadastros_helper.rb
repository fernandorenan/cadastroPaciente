module CadastrosHelper

  def birthday_notification
      births = ""
      @cadastros.each do |cadastro| 
          if cadastro.birth.month == Date.today.month
            births << "<li>Esse mês temos o aniversário de #{cadastro.name} dia #{cadastro.birth.day}. 
              #{congrats(cadastro)}</li>"
          end
      end
      if births.present?
        %Q{Estamos no mês #{Date.today.month}: <ul>#{births}</ul></div>}.html_safe
      else
        %Q{Estamos no mês #{Date.today.month} e não há aniversariantes este mês.}.html_safe
      end
  end

  def congrats(cadastro)
    cadastro.birth == Date.today ? "<strong>É hoje!, não esqueça o parabéns!</strong>":""
  end
end
