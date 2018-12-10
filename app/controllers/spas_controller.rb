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
    @search_spas = Spa.where(area_id: area_id)
  end

  def index_search_list
  end

  def show
  end


end
