class BudgetProductsController < ApplicationController
  before_action :set_budget_product, only: [:show, :edit, :update, :destroy]

  # GET /budget_products
  # GET /budget_products.json
  def index
    @budget_products = BudgetProduct.all
  end

  # GET /budget_products/1
  # GET /budget_products/1.json
  def show
  end

  # GET /budget_products/new
  def new
    @budget_product = BudgetProduct.new
  end

  # GET /budget_products/1/edit
  def edit
  end

  # POST /budget_products
  # POST /budget_products.json
  def create
    @budget_product = BudgetProduct.new(budget_product_params)

    respond_to do |format|
      if @budget_product.save
        format.html { redirect_to @budget_product, notice: 'Budget product was successfully created.' }
        format.json { render :show, status: :created, location: @budget_product }
      else
        format.html { render :new }
        format.json { render json: @budget_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_products/1
  # PATCH/PUT /budget_products/1.json
  def update
    respond_to do |format|
      if @budget_product.update(budget_product_params)
        format.html { redirect_to @budget_product, notice: 'Budget product was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_product }
      else
        format.html { render :edit }
        format.json { render json: @budget_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_products/1
  # DELETE /budget_products/1.json
  def destroy
    @budget_product.destroy
    respond_to do |format|
      format.html { redirect_to budget_products_url, notice: 'Budget product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_product
      @budget_product = BudgetProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_product_params
      params.require(:budget_product).permit(:quantity, :integer, :product_id, :budget)
    end
end
