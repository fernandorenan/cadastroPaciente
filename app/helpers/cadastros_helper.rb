module CadastrosHelper

    def birthday_notification
        births = ""
        @cadastros.each do |cadastro| 
            if cadastro.birth.month == Date.today.month
             births << "<li>Esse mês temos o aniversário de #{cadastro.name} dia #{cadastro.birth.day}. 
                #{cadastro.birth == Date.today ? "<strong>É hoje!</strong>":"" }</li>"
            end
        end
        %Q{Estamos no mês #{Date.today.month}: <ul>#{births}</ul></div>}.html_safe
    end
 
end
