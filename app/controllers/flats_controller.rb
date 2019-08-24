class FlatsController < ApplicationController

  def index

   if params[:query].present? # we call straigh the hash(params)
      @query = params[:query] #I guess this we set this up 'cause we want to use it in the view, we have to make this
      #params available on the view somehow and this is the way
      @flats = Flat.where("name LIKE '%#{params[:query]}%'")
    else
      @flats = Flat.all
    end


  #juan try out
    #@search = params[:query]
    #@flats = Flat.select {|id,r| r[:query] == @flats}
    #if @search == @flats
     # @flats = Flat.where("query LIKE '%house%'")
    #else
     # @flats
    #end
    #wagon solution



  end



  def show
    @flat = Flat.find(params[:id])

  end

  def new
    @flat = Flat.new

  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end

  end

  def edit
    @flat = Flat.find(params[:id])

  end

  def update
     if @flat = Flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end

  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy

    redirect_to flats_path

  end

  private

  def flat_params
    params.require(:flat).permit(:name,:address,:description,:price_per_night,:number_of_guests)

  end
end
