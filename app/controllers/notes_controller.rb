class NotesController < ApplicationController

    def index 
        set_car
    end

    def new
      set_car
     @note = Note.new
    end

    def create
      @note = Note.new(note_params)
      if @note.save
        redirect_to car_path(@note.car)
      else
          flash.now[:errors] = "You must leave a note!"
          redirect_to cars_path
      end
    end

    private
     
    def set_car
       @car = Car.find(params[:car_id])
    end

    def note_params
        params.require(:note).permit(:car_id, :user_id, :notes)
    end
end
