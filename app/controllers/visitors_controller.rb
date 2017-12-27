class VisitorsController < ApplicationController
    def new
        @owner = Owner.new
        # magic - render 'visitors/new'
    end
end