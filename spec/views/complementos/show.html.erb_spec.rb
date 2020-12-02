require 'rails_helper'

RSpec.describe "complementos/show", type: :view do
  before(:each) do
    @complemento = assign(:complemento, Complemento.create!(
      :apelido => "Apelido",
      :codigo => "Codigo",
      :pais => "Pais",
      :description => "MyText",
      :can_send_email => false,
      :ano_graduacao => 2,
      :temperatura_corpo => 3.5,
      :preco => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Apelido/)
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/Pais/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/9.99/)
  end
end
