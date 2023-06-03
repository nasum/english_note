require 'rails_helper'

RSpec.describe "journals/show", type: :view do
  before(:each) do
    assign(:journal, Journal.create!(
      title: "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
