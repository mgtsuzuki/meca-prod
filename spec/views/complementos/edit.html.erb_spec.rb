require 'rails_helper'

RSpec.describe "complementos/edit", type: :view do
  before(:each) do
    @complemento = assign(:complemento, Complemento.create!(
      :apelido => "MyString",
      :codigo => "MyString",
      :pais => "MyString",
      :description => "MyText",
      :can_send_email => false,
      :ano_graduacao => 1,
      :temperatura_corpo => 1.5,
      :preco => "9.99"
    ))
  end

  it "renders the edit complemento form" do
    render

    assert_select "form[action=?][method=?]", complemento_path(@complemento), "post" do

      assert_select "input[name=?]", "complemento[apelido]"

      assert_select "input[name=?]", "complemento[codigo]"

      assert_select "input[name=?]", "complemento[pais]"

      assert_select "textarea[name=?]", "complemento[description]"

      assert_select "input[name=?]", "complemento[can_send_email]"

      assert_select "input[name=?]", "complemento[ano_graduacao]"

      assert_select "input[name=?]", "complemento[temperatura_corpo]"

      assert_select "input[name=?]", "complemento[preco]"
    end
  end
end
