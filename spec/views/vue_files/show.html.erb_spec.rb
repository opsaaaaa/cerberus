require 'rails_helper'

RSpec.describe "vue_files/show", type: :view do
  before(:each) do
    @vue_file = assign(:vue_file, VueFile.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
