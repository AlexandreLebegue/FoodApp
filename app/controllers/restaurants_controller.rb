class RestaurantsController < ApplicationController
  def index
    @restaurants= Restaurant.all
  end
  def create
    resto = Restaurant.create titre: params[:titre]
    redirect_to "/restaurants"
  end
  def show
    @resto = Restaurant.find(params[:id])
  end
  def edit
    @resto = Restaurant.find(params[:id])
  end
  def modif
    restorant = Restaurant.find(params[:id])
    if params[:titre].present?
      restorant.titre = params[:titre]
    end
    if params[:ameliorer].present?
    restorant.description = params[:ameliorer]
    end
    if params[:categorie].present?
    restorant.categorie = params[:categorie]
    end


    restorant.save

  end
  def suppr
    restorant = Restaurant.find(params[:id]).destroy
    redirect_to "/restaurants"
  end
end
