require 'spec_helper'

describe "costos/show" do
  before(:each) do
    @costo = assign(:costo, stub_model(Costo,
      :titulo => "Titulo",
      :contenido => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
  end
end
