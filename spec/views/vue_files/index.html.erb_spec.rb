require 'rails_helper'

RSpec.describe "vue_files/index", type: :view do
  before(:each) do
    assign(:vue_files, [
      VueFile.create!(),
      VueFile.create!()
    ])
  end

  it "renders a list of vue_files" do
    render
  end
end
