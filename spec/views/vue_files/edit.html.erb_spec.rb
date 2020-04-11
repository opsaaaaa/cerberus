require 'rails_helper'

RSpec.describe "vue_files/edit", type: :view do
  before(:each) do
    @vue_file = assign(:vue_file, VueFile.create!())
  end

  it "renders the edit vue_file form" do
    render

    assert_select "form[action=?][method=?]", vue_file_path(@vue_file), "post" do
    end
  end
end
