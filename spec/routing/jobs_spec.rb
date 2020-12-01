require 'rails_helper'

describe 'jobs routes' do
  it "should route to jobs index" do
    expect(get '/jobs').to route_to('jobs#index')
  end

  it 'should route to jobs show' do
      expect(get '/jobs/1').to route_to('jobs#show', id: '1')
    end

end
