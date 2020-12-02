require 'rails_helper'

RSpec.describe "jobapplications/index", type: :view do
  before(:each) do
    assign(:jobapplications, [
      Jobapplication.create!(
        job_id: "Job",
        job_title: "Job Title",
        user_id: "User",
        email: "Email",
        contact_number: "Contact Number",
        seen: false
      ),
      Jobapplication.create!(
        job_id: "Job",
        job_title: "Job Title",
        user_id: "User",
        email: "Email",
        contact_number: "Contact Number",
        seen: false
      )
    ])
  end

  it "renders a list of jobapplications" do
    render
    assert_select "tr>td", text: "Job".to_s, count: 2
    assert_select "tr>td", text: "Job Title".to_s, count: 2
    assert_select "tr>td", text: "User".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Contact Number".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
