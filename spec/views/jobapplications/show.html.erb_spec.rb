require 'rails_helper'

RSpec.describe "jobapplications/show", type: :view do
  before(:each) do
    @jobapplication = assign(:jobapplication, Jobapplication.create!(
      job_id: "Job",
      job_title: "Job Title",
      user_id: "User",
      email: "Email",
      contact_number: "Contact Number",
      seen: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Job/)
    expect(rendered).to match(/Job Title/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Contact Number/)
    expect(rendered).to match(/false/)
  end
end
