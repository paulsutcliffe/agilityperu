require 'spec_helper'

describe "reglamentos/show" do
  before(:each) do
    @reglamento = assign(:reglamento, stub_model(Reglamento,
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
