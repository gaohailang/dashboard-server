module Api
  class SystemsController < ApplicationController

    def show
      @system = System.new
      if params[:format] == 'jsonp'
        render :js => 'window.system=%s;' % [System.new.to_json]
      else
        render :json => @system
      end
    end
  end
end
