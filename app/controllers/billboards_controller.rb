class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :edit, :update, :destroy]

  def index 
    @billboards = Billboard.all
  end
  
  def show
  end

  def new
    @billboard = Billboard.new
    render partial: 'form'
  end

  def create
    @billboard = @song.billboard.new(billboard_params)
    if @billboard.save 
      redirect_to artist_song_path(@song.artist_id, @song)
    else 
      render :new
    end
  end
  
  def edit
    render partial: 'form'
  end

  def update
    if  @billboard.update(billboard_params)
      redirect_to @billboard
    else 
      render :edit
    end
  end

  def destroy
    @billboard.destroy
  end
    

  private 

    def set_billboard
      @billboard = Billboard.find(params[:id])
    end

        
    def billboard_params
    params.require(:billboard).permit(:Latino, :Eighties, :Name)
    end
end