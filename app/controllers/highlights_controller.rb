class HighlightsController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @highlights = Highlight.all
    render :index
  end
  
  def show
    @highlight = Highlight.find(params[:id])
    render :show
  end
  
  def new
    render :new
  end
  
  def create
    @highlight = Highlight.new(params[:highlight])
    
    if @highlight.save
      redirect_to user_highlight_url(params[:user_id], @highlight)
    else
      flash.now[:errors] = @highlight.errors.full_messages
      render :new
    end
  end
end
