class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def new
    spa_id = params[:id]
    @reviewed_spa = Spa.find_by(id: spa_id)
    @review = Review.new
    @review.user_id = current_user.id
    @review.spa_id = @reviewed_spa.id

  end

  def create
    @reviewed_spa = Spa.find_by(id: params[:review][:spa_id])
    @review = Review.new(review_params)
    @best_service = Service.find_by(id: params[:review][:service_id])
    @spa_reviews = Review.where(spa_id: @reviewed_spa.id)
    @all_review_all_rating = 0
    @all_review_bath_rating = 0
    @all_review_meal_rating = 0
    @all_review_other_rating = 0
    if @review.save
      @spa_reviews.each_with_index do |review, i|
        @all_review_all_rating += review.review_all_rating
        @all_review_bath_rating += review.review_bath_rating
        @all_review_meal_rating += review.review_meal_rating
        @all_review_other_rating += review.review_other_rating
        if i == @spa_reviews.size - 1
          @reviewed_spa.all_rating = (@all_review_all_rating / @spa_reviews.size)
          @reviewed_spa.bath_rating = (@all_review_bath_rating / @spa_reviews.size)
          @reviewed_spa.meal_rating = (@all_review_meal_rating / @spa_reviews.size)
          @reviewed_spa.other_rating = (@all_review_other_rating / @spa_reviews.size)
          @reviewed_spa.update(all_rating: @reviewed_spa.all_rating, bath_rating: @reviewed_spa.bath_rating, meal_rating: @reviewed_spa.meal_rating, other_rating: @reviewed_spa.other_rating)
          @best_service.vote = (@best_service.vote + 1)
          @best_service.update(vote: @best_service.vote)
          redirect_to review_complete_path(id: @reviewed_spa.id) #成功の場合
        end
      end
    else
      render 'new' #失敗の場合
    end
  end

  def complete
  end

  def edit
  end

  def update
  end

  def edit_complete
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    @reviewed_spa = Spa.find_by(id: @review.spa_id)
    @best_service = Service.find_by(id: @review.service_id)
    @spa_reviews = Review.where(spa_id: @reviewed_spa.id)
    @all_review_all_rating = 0
    @all_review_bath_rating = 0
    @all_review_meal_rating = 0
    @all_review_other_rating = 0
    @review.destroy
    if @spa_reviews.size == 0
      @reviewed_spa.update(all_rating: 0, bath_rating: 0, meal_rating: 0, other_rating: 0)
      @best_service.vote = (@best_service.vote - 1)
      @best_service.update(vote: @best_service.vote)
      redirect_to user_path(current_user.id) and return
    else
        @spa_reviews.each_with_index do |review, i|
        @all_review_all_rating += review.review_all_rating
        @all_review_bath_rating += review.review_bath_rating
        @all_review_meal_rating += review.review_meal_rating
        @all_review_other_rating += review.review_other_rating
        if i == @spa_reviews.size - 1
          @reviewed_spa.all_rating = (@all_review_all_rating / @spa_reviews.size)
          @reviewed_spa.bath_rating = (@all_review_bath_rating / @spa_reviews.size)
          @reviewed_spa.meal_rating = (@all_review_meal_rating / @spa_reviews.size)
          @reviewed_spa.other_rating = (@all_review_other_rating / @spa_reviews.size)
          @reviewed_spa.update(all_rating: @reviewed_spa.all_rating, bath_rating: @reviewed_spa.bath_rating, meal_rating: @reviewed_spa.meal_rating, other_rating: @reviewed_spa.other_rating)
          @best_service.vote = (@best_service.vote - 1)
          @best_service.update(vote: @best_service.vote)
          redirect_to user_path(current_user.id) and return
        end
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :spa_id, :bathing_date,  :review_all_rating,  :review_bath_rating,  :review_meal_rating,  :review_other_rating,  :spa_impression,  :service_id,  :service_impression)
  end

end
