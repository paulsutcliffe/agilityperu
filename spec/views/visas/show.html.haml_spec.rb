require 'spec_helper'

describe "visas/show" do
  before(:each) do
    @visa = assign(:visa, stub_model(Visa,
      :titulo => "Titulo",
      :imagen => "Imagen"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Imagen/)
  end
end
