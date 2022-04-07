class MenusController < ApplicationController
	before_action :set_menus, only: %i[ show edit update destroy ]
  

  def index
     @menus = Menu.all
  end

  def show
  end

  def new
    @menu = Menu.new
    #@menu = current_user.menus.build
  end

  def create
    
    @menu = current_user.menus.create(my_params)
     respond_to do |format|
       if @menu.save
        format.html { redirect_to menu_url(@menu), notice: "menu was successfully created." }
   
       else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
     
  end

  def update
     
     respond_to do |format|
      if @menu.update(my_params)
        format.html { redirect_to @menu, notice: 'menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menu_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
   
  end


  def search
    @query = params[:query]
    @menus = Menu.where("menus.food_name like ?", ["%#{@query}%"])
    render :index

  end

  private

  def set_menus
      @menu = Menu.find(params[:id])
  end
  def my_params
     # debugger
      params.require(:menu).permit(:name, :food_name,  :image, :price)
  end






end