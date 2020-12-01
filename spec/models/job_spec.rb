require 'rails_helper'

RSpec.describe Job, type: :model do
  describe '#validations' do
  it 'should test that the factory is valid' do
    expect(build :job).to be_valid
  end

  it 'should validate the presence of the title' do
    job = build :job, title: ''
    expect(job).not_to be_valid
    expect(job.errors.messages[:title]).to include("can't be blank")
  end

  it 'should validate the presence of the body' do
    job = build :job, body: ''
    expect(job).not_to be_valid
    expect(job.errors.messages[:body]).to include("can't be blank")
  end

  it 'should validate the presence of the slug' do
    job = build :job, slug: ''
    expect(job).not_to be_valid
    expect(job.errors.messages[:slug]).to include("can't be blank")
  end

it 'should validate uniqueness of the slug' do
  job = create :job
  invalid_job = build :job, slug: job.slug
  expect(invalid_job).not_to be_valid
end
end

describe '.recent' do
it 'should list recent job first'do
  old_job = create :job
  newer_job = create :job
  expect(described_class.recent).to eq(
    [ newer_job, old_job ]
  )
  old_job.update_column :created_at, Time.now
  expect(described_class.recent).to eq(
    [ old_job, newer_job ]
  )
end
end

end
