class Testing1sController < ApplicationController
  before_action :set_testing1, only: %i[ show edit update destroy ]

  # GET /testing1s or /testing1s.json
  def index
    @testing1s = Testing1.all
  end

  # GET /testing1s/1 or /testing1s/1.json
  def show
  end

  # GET /testing1s/new
  def new
    @testing1 = Testing1.new
  end

  # GET /testing1s/1/edit
  def edit
  end

  # POST /testing1s or /testing1s.json
  def create
    @testing1 = Testing1.new(testing1_params)

    respond_to do |format|
      if @testing1.save
        format.html { redirect_to testing1_url(@testing1), notice: "Testing1 was successfully created." }
        format.json { render :show, status: :created, location: @testing1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testing1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testing1s/1 or /testing1s/1.json
  def update
    respond_to do |format|
      if @testing1.update(testing1_params)
        format.html { redirect_to testing1_url(@testing1), notice: "Testing1 was successfully updated." }
        format.json { render :show, status: :ok, location: @testing1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testing1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testing1s/1 or /testing1s/1.json
  def destroy
    @testing1.destroy

    respond_to do |format|
      format.html { redirect_to testing1s_url, notice: "Testing1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testing1
      @testing1 = Testing1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testing1_params
      params.require(:testing1).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
