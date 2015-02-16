class DiscountCategoriesController < ApplicationController
  before_action :set_discount_category, only: [:show, :edit, :update, :destroy]

  # GET /discount_categories
  # GET /discount_categories.json
  def index
    @discount_categories = DiscountCategory.all
  end

  # GET /discount_categories/1
  # GET /discount_categories/1.json
  def show
  end

  # GET /discount_categories/new
  def new
    @discount_category = DiscountCategory.new
  end

  # GET /discount_categories/1/edit
  def edit
  end

  # POST /discount_categories
  # POST /discount_categories.json
  def create
    @discount_category = DiscountCategory.new(discount_category_params)

    respond_to do |format|
      if @discount_category.save
        format.html { redirect_to @discount_category, notice: 'Discount category was successfully created.' }
        format.json { render :show, status: :created, location: @discount_category }
      else
        format.html { render :new }
        format.json { render json: @discount_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discount_categories/1
  # PATCH/PUT /discount_categories/1.json
  def update
    respond_to do |format|
      if @discount_category.update(discount_category_params)
        format.html { redirect_to @discount_category, notice: 'Discount category was successfully updated.' }
        format.json { render :show, status: :ok, location: @discount_category }
      else
        format.html { render :edit }
        format.json { render json: @discount_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discount_categories/1
  # DELETE /discount_categories/1.json
  def destroy
    @discount_category.destroy
    respond_to do |format|
      format.html { redirect_to discount_categories_url, notice: 'Discount category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discount_category
      @discount_category = DiscountCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discount_category_params
      params.require(:discount_category).permit(:title)
    end
end
