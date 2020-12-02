require 'rails_helper'

RSpec.describe "complementos/index", type: :view do
  before(:each) do
    assign(:complementos, [
      Complemento.create!(
        :apelido => "Apelido",
        :codigo => "Codigo",
        :pais => "Pais",
        :description => "MyText",
        :can_send_email => false,
        :ano_graduacao => 2,
        :temperatura_corpo => 3.5,
        :preco => "9.99"
      ),
      Complemento.create!(
        :apelido => "Apelido",
        :codigo => "Codigo",
        :pais => "Pais",
        :description => "MyText",
        :can_send_email => false,
        :ano_graduacao => 2,
        :temperatura_corpo => 3.5,
        :preco => "9.99"
      )
    ])
  end

  it "renders a list of complementos" do
    render
    assert_select "tr>td", :text => "Apelido".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
