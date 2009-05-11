class TopicsController < ApplicationController
  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic])
    if @topic.save
      flash[:notice] = 'Topic was successfully created.'
      redirect_to(@topic)
    else
      render :action => "new"
    end
  end

  def index
    @topics = Topic.find(:all)
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
debugger
    if @topic.update_attributes(params[:topic])
      flash[:notice] = 'Topic was successfully updated.'
      redirect_to(@topic)
    else
      render :action => "edit"
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to(topics_url)
  end

end
