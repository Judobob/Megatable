class TableDataController < ApplicationController
  before_action :set_table_datum, only: [:show, :edit, :update, :destroy]

  # GET /table_data
  # GET /table_data.json
  def index
    @table_data = TableDatum.all
  end

  # GET /table_data/1
  # GET /table_data/1.json
  def show
  end

  # GET /table_data/new
  def new
    @table_datum = TableDatum.new
  end

  # GET /table_data/1/edit
  def edit
  end

  # POST /table_data
  # POST /table_data.json
  def create
    @table_datum = TableDatum.new(table_datum_params)

    respond_to do |format|
      if @table_datum.save
        format.html { redirect_to @table_datum, notice: 'Table datum was successfully created.' }
        format.json { render :show, status: :created, location: @table_datum }
      else
        format.html { render :new }
        format.json { render json: @table_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_data/1
  # PATCH/PUT /table_data/1.json
  def update
    respond_to do |format|
      if @table_datum.update(table_datum_params)
        format.html { redirect_to @table_datum, notice: 'Table datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_datum }
      else
        format.html { render :edit }
        format.json { render json: @table_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_data/1
  # DELETE /table_data/1.json
  def destroy
    @table_datum.destroy
    respond_to do |format|
      format.html { redirect_to table_data_url, notice: 'Table datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_datum
      @table_datum = TableDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_datum_params
      params.require(:table_datum).permit(:name)
    end
end
