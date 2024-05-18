class ReviewsController < ApplicationController
  protect_from_forgery

  before_action :set_review, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[ index ]

  # GET /reviews or /reviews.json
  def index
    @reviews = Review.all.includes([:user])
    @reviews_total = @reviews.count
    @reviews = @reviews.order(created_at: :desc)
    @pagy, @reviews = pagy(@reviews, items: 3)
  end

  # GET /reviews/1 or /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews or /reviews.json
  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to review_url(@review), notice: t(".was_sent")
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to review_url(@review), notice: t(".was_updated") }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @review.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: t(".was_deleted") }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.friendly.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def review_params
    params.require(:review).permit(:title, :lecturelevel, :valuelevel, :easypoint, :hardpoint, :notes, :user_id)
  end
end
