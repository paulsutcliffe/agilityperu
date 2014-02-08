require 'spec_helper'

describe "reglamentos/edit" do
  before(:each) do
    @reglamento = assign(:reglamento, stub_model(Reglamento,
      :titulo => "MyString",
      :contenido => "MyText"
    ))
  end

  it "renders the edit reglamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reglamento_path(@reglamento), "post" do
      assert_select "input#reglamento_titulo[name=?]", "reglamento[titulo]"
      assert_select "textarea#reglamento_contenido[name=?]", "reglamento[contenido]"
    end
  end
end
