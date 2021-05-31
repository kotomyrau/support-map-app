class StoresController < ApplicationController


  def index
    @stores = Store.all

    # the `geocoded` scope filters only stores with coordinates (latitude & longitude)
    @markers = @stores.geocoded.map do |store|
      {
        lat: store.latitude,
        lng: store.longitude,
        infoWindow: render_to_string(partial: "/stores/info_window", locals: { :store => store})
      }
    end
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to store_path(@store), notice: 'Store has been added!'
    else
      render :new
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to store_path(@store), notice: 'Store was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @store = Store.find(params[:id])
    if @store.destroy
      flash[:notice] = "Store has been removed"
      redirect_to stores_path
    else
      redirect_to store_path(@store), notice: 'This store was not deleted'
    end
  end

  private 

  def store_params

    params.require(:store).permit(
      :name, 
      :category, 
      :bio, :address, 
      :website, 
      :telephone, 
      :price_range, 
      :store_image, 
      store_images: []
    )
  end

end
