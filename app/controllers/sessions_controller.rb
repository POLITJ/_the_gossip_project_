class SessionsController < ApplicationController
    def index
        # @sessions = Session.all
    end
    def show
        @session = Session.find(params![:id])
    end
    def new
        # @session = Session.new
    end
    def create
    end
    def edit
    end
    def update
    end
    def destroy
    end
end
