class ThemesController < ApplicationController
 def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(params[:theme])
    if @theme.save
      flash[:notice] = 'Theme was successfully created.'
      redirect_to(@theme)
    else
      render :action => "new"
    end
  end

  def index
    @themes = Theme.find(:all)
  end

  def show
    @theme = Theme.find(params[:id])
  end

  def edit
    @theme = Theme.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:id])
    if @theme.update_attributes(params[:theme])
      flash[:notice] = 'Theme was successfully updated.'
      redirect_to(@theme)
    else
      render :action => "edit"
    end
  end

  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy
    redirect_to(themes_url)
  end

end
