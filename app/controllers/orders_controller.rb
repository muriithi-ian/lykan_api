class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show update destroy ]
  before_action :authorize
  skip_before_action :verify_authenticity_token, only: [:create]

  # GET /orders
  def index
    @orders = Order.all

    render json: @orders
  end

  # GET /orders/1
  def show
    render json: @order
  end

  # GET /orders/:user_id
  def show_user_orders
    @orders = Order.where(user_id: params[:user_id])
    render json: @orders
  end

  # POST /orders
  def create
    @user = User.find(session[:user_id])
    @order = Order.new(:status => params[:status], :user_id => @user.id)

    if @order.save
      params[:products].each do |product| 
        @order_product = OrderProduct.new(:order_id => @order.id, :product_id => product)
        @order_product.save
      end
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.permit(:status, :products)
    end
end
