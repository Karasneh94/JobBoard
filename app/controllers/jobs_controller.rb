class JobsController < ApplicationController
def index
  jobs = Job.recent.page(params[:page]).per(params[:per_page])
  render json: jobs

end

def show
  render json: Job.find(params[:id])
  end


end
