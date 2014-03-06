class HighlightsController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @highlights = Highlight.all
    render :show
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
      redirect_to highlight_url(params[:id])
    else
      flash.now[:errors] = @highlight.errors.full_messages
      render :new
    end
  end
end
