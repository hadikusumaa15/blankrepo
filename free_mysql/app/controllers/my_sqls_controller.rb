class MySqlsController < ApplicationController
  before_action :set_my_sql, only: [:show, :edit, :update, :destroy]

  # GET /my_sqls
  # GET /my_sqls.json
  def index
    @my_sqls = MySql.all
  end

  # GET /my_sqls/1
  # GET /my_sqls/1.json
  def show
  end

  # GET /my_sqls/new
  def new
    @my_sql = MySql.new
  end

  # GET /my_sqls/1/edit
  def edit
  end

  # POST /my_sqls
  # POST /my_sqls.json
  def create
    @my_sql = MySql.new(my_sql_params)

    respond_to do |format|
      if @my_sql.save
        format.html { redirect_to @my_sql, notice: 'My sql was successfully created.' }
        format.json { render :show, status: :created, location: @my_sql }
      else
        format.html { render :new }
        format.json { render json: @my_sql.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_sqls/1
  # PATCH/PUT /my_sqls/1.json
  def update
    respond_to do |format|
      if @my_sql.update(my_sql_params)
        format.html { redirect_to @my_sql, notice: 'My sql was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_sql }
      else
        format.html { render :edit }
        format.json { render json: @my_sql.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_sqls/1
  # DELETE /my_sqls/1.json
  def destroy
    @my_sql.destroy
    respond_to do |format|
      format.html { redirect_to my_sqls_url, notice: 'My sql was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_sql
      @my_sql = MySql.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_sql_params
      params.require(:my_sql).permit(:title, :Content)
    end
end
