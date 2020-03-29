require 'rails_helper'

RSpec.describe "vue_files/new", type: :view do
  before(:each) do
    assign(:vue_file, VueFile.new())
  end

  it "renders new vue_file form" do
    render

    assert_select "form[action=?][method=?]", vue_files_path, "post" do
    end
  end
end
