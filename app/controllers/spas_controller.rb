class SpasController < ApplicationController

  def top

  end

  def detail_search_form
  end

  def detail_search
  end

  def detail_search_list
  end

  def index_search
    area_id = params[:id]
    @search_area = Area.find_by(id: area_id)
    @search_spas = Spa.where(area_id: area_id).order(all_rating: :desc).page(params[:page]).per(3)
    @search_spas_size = Spa.where(area_id: area_id).count
  end

  def index_search_list
  end

  def show
    spa_id = params[:id]
    @selected_spa = Spa.find_by(id: spa_id)
    @spa_services = Service.where(spa_id: spa_id).order(vote: :desc)
    @reviews = Review.where(spa_id: spa_id).order(bathing_date: :desc).page(params[:page]).per(3)

  end

  def edit
    @spa = Spa.find_by(id: params[:id])
  end

  def update
    @spa = Spa.find(params[:id])
    @spa.update(spa_params)
    redirect_to root_path
  end

  def spa_edit_top

  end

  private

  def spa_params
    params.require(:spa).permit(:spa_image)
  end

end
