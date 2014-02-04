require 'spec_helper'

describe "requisitos/show" do
  before(:each) do
    @requisito = assign(:requisito, stub_model(Requisito,
      :pais => "Pais",
      :contenido => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Pais/)
    expect(rendered).to match(/MyText/)
  end
end
