require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  let(:post) {
    Post.create!(
      name: "MyString",
      body: "MyText",
      rating: 1,
      published: false
    )
  }

  before(:each) do
    assign(:post, post)
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(post), "post" do

      assert_select "input[name=?]", "post[name]"

      assert_select "textarea[name=?]", "post[body]"

      assert_select "input[name=?]", "post[rating]"

      assert_select "input[name=?]", "post[published]"
    end
  end
end
