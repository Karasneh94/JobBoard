class JobapplicationsController < ApplicationController
  before_action :set_jobapplication, only: [:show, :edit, :update, :destroy]

  # GET /jobapplications
  # GET /jobapplications.json
  def index
    @jobapplications = Jobapplication.all
  end

  # GET /jobapplications/1
  # GET /jobapplications/1.json
  def show
  end

  # GET /jobapplications/new
  def new
    @jobapplication = Jobapplication.new
  end

  # GET /jobapplications/1/edit
  def edit
  end

  # POST /jobapplications
  # POST /jobapplications.json
  def create
    @jobapplication = Jobapplication.new(jobapplication_params)

    respond_to do |format|
      if @jobapplication.save
        format.html { redirect_to @jobapplication, notice: 'Jobapplication was successfully created.' }
        format.json { render :show, status: :created, location: @jobapplication }
      else
        format.html { render :new }
        format.json { render json: @jobapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobapplications/1
  # PATCH/PUT /jobapplications/1.json
  def update
    respond_to do |format|
      if @jobapplication.update(jobapplication_params)
        format.html { redirect_to @jobapplication, notice: 'Jobapplication was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobapplication }
      else
        format.html { render :edit }
        format.json { render json: @jobapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobapplications/1
  # DELETE /jobapplications/1.json
  def destroy
    @jobapplication.destroy
    respond_to do |format|
      format.html { redirect_to jobapplications_url, notice: 'Jobapplication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobapplication
      @jobapplication = Jobapplication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobapplication_params
      params.require(:jobapplication).permit(:job_id, :job_title, :user_id, :email, :contact_number, :seen)
    end
end
