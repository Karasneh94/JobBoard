require 'rails_helper'

RSpec.describe "jobapplications/edit", type: :view do
  before(:each) do
    @jobapplication = assign(:jobapplication, Jobapplication.create!(
      job_id: "MyString",
      job_title: "MyString",
      user_id: "MyString",
      email: "MyString",
      contact_number: "MyString",
      seen: false
    ))
  end

  it "renders the edit jobapplication form" do
    render

    assert_select "form[action=?][method=?]", jobapplication_path(@jobapplication), "post" do

      assert_select "input[name=?]", "jobapplication[job_id]"

      assert_select "input[name=?]", "jobapplication[job_title]"

      assert_select "input[name=?]", "jobapplication[user_id]"

      assert_select "input[name=?]", "jobapplication[email]"

      assert_select "input[name=?]", "jobapplication[contact_number]"

      assert_select "input[name=?]", "jobapplication[seen]"
    end
  end
end
