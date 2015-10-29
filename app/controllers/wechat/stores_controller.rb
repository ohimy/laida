class Wechat::StoresController < Wechat::ApplicationController

  def index
    @stores = Store.all
  end

  def 
    @store = Store.find(params[:id])
  end

end
