module ComplementosHelper
    def buttons(model_name, target_property, button_source)
        html=''
        list = button_source.sort
        html << '<div  class="custom-control  custom-radio"><legend>Pais</legend>'
        list.each do |x|
            html << radio_button(model_name, target_property, x[1])
            html << "  " + (x[0])
            html << '<br>'
        end
        html << '</div>'
        return html.html_safe
    end

    def button_select(model_name, target_property, button_source)
        html=''
        list = button_source.sort
        if list.length < 4
            html << '<div  class="custom-control custom-radio"><legend>Pais</legend>'
            list.each do |x|
                html << radio_button(model_name, target_property, x[1])
                html << "  " + (x[0])
                html << '<br>'
            end
            html << '</div>'
        else
            html << ' <label for="complement_pais">Pais</label><br>'
            html << select(model_name, target_property, list)
        end
        return html.html_safe
    end
end