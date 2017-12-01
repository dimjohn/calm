class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  before_action :not_same_user, only: [:edit, :update]




  def home

  end

  def index
    @meals = Meal.all
  end

  def show
    @photos = @meal.photos
  end

  def new
    @meal = current_user.meals.new
  end


  def create
    @meal = current_user.meals.new(meals_params)
    if @meal.save
      if params[:images]
        params[:images].each do |i|
          @meal.photos.create(image: i)
        end
      end
      @photos = @meal.photos
      redirect_to meals_path(@meal), notice: "Repas ajouté avec succes"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @meal.update(meals_params)
      if params[:images]
        params[:images].each do |i|
          @meal.photos.create(image: i)
        end
      end
      @photos = @meal.photos
      redirect_to meals_path, notice: "Repas modifié avec succes"
    else
      render :edit
    end
  end

    def destroy
      if @meal.destroy
        redirect_to meals_path, notice: "Repas supprimé avec succes"
      else
        render :index
      end
    end

    private

    def meals_params
      params.require(:meal).permit(:name, :category, :cooked_at, :price, :description, :user_id)
    end

    def set_meal
      @meal = Meal.find(params[:id])
    end

    def not_same_user
      if current_user.id != @meal.user_id
        flash[:danger] = 'Impossible de modifier cette page'
        redirect_to root_path
      end
    end
    



  end

