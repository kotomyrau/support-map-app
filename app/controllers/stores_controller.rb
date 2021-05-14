class StoresController < ApplicationController
  def index
    @stores = Store.all

    # the `geocoded` scope filters only stores with coordinates (latitude & longitude)
    @markers = @stores.geocoded.map do |store|
      {
        lat: store.latitude,
        lng: store.longitude
      }
    end
  end
end
