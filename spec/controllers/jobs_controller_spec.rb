require 'rails_helper'

describe JobsController do
  describe '#index' do
    subject {get :index}
    it "should return success response" do
      subject
      expect(response).to have_http_status(:ok)
    end

it "should return proper json" do
  create_list :job, 2
  subject
  Job.recent.each_with_index do |job,index|
  expect(json_data[index]['attributes']).to eq({
    "title" => job.title,
    "body" => job.body,
    "slug" => job.slug
    })
end
end

it "should return jobs in the proper order" do
  old_job = create :job
  newer_job = create :job
  subject
  expect(json_data.first['id']).to eq(newer_job.id.to_s)
  expect(json_data.last['id']).to eq(old_job.id.to_s)

end

it "should paginate results" do
  create_list :job, 3
  get :index, params: { page: 2, per_page: 1 }
  expect(json_data.length).to eq 1
  expected_job = Job.recent.second.id.to_s
  expect(json_data.first['id']).to eq(expected_job)

end
end

describe '#show' do
    let(:job) { create :job }
    subject { get :show, params: { id: job.id } }

    it 'should return success response' do
      subject
      expect(response).to have_http_status(:ok)
    end

    it 'should return proper json' do
      subject
      expect(json_data['attributes']).to eq({
          "title" => article.title,
          "body" => article.body,
          "slug" => article.slug
      })
    end
  end


end
