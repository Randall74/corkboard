class PegsController < ApplicationController
    before_action :find_peg, only: [:show, :edit, :update, :destroy]
    
    def index
        @pegs = Peg.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @peg = Peg.new
    end
    
    def create
        @peg = Peg.new(peg_params)
        
        if @peg.save
            redirect_to @peg, notice: "Successfully created new Peg"
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @peg.update(peg_params)
            redirect_to @peg, notice: "Peg was successfully updated"
        else
            render 'edit'
        end
        
    end
    
    def destroy
        @peg.destroy
        redirect_to root_path
    end
    
    private
    
    def peg_params
        params.require(:peg).permit(:title, :description)
    end
    
    def find_peg
        @peg = Peg.find(params[:id])
    end
end
