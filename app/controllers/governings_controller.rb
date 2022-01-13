class GoverningsController < ApplicationController
  before_action :set_governing, only: %i[ show edit update destroy ]

  # GET /governings or /governings.json
  def index
    @governings = Governing.all
  end

  # GET /governings/1 or /governings/1.json
  def show
  end

  # GET /governings/new
  def new
    @governing = Governing.new
  end

  # GET /governings/1/edit
  def edit
  end

  # POST /governings or /governings.json
  def create
    @governing = Governing.new(governing_params)

    respond_to do |format|
      if @governing.save
        format.html { redirect_to governing_url(@governing), notice: "Governing was successfully created." }
        format.json { render :show, status: :created, location: @governing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @governing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /governings/1 or /governings/1.json
  def update
    respond_to do |format|
      if @governing.update(governing_params)
        format.html { redirect_to governing_url(@governing), notice: "Governing was successfully updated." }
        format.json { render :show, status: :ok, location: @governing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @governing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /governings/1 or /governings/1.json
  def destroy
    @governing.destroy

    respond_to do |format|
      format.html { redirect_to governings_url, notice: "Governing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_governing
      @governing = Governing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def governing_params
      params.require(:governing).permit(:expires, :superadmin, :customer_id, :user_id)
    end
end
