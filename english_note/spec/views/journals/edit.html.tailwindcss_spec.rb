require 'rails_helper'

RSpec.describe "journals/edit", type: :view do
  let(:journal) {
    Journal.create!(
      title: "MyString"
    )
  }

  before(:each) do
    assign(:journal, journal)
  end

  it "renders the edit journal form" do
    render

    assert_select "form[action=?][method=?]", journal_path(journal), "post" do

      assert_select "input[name=?]", "journal[title]"
    end
  end
end
