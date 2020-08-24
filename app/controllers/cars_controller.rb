class CarsController < ApplicationController
     helper_method :has_permission

    def index # show all records
          @cars = Car.where(owner: current_user)
          # @loans = current_user.loans.all
    end

    def model
      @colorado = current_user.cars.colorado
      render :model
    end  


    def show # show single record
       #will have template
       @car = Car.find(params[:id])
    end
 
     def new # display form for new record
       #will have template
       @car = Car.new
     end
 
     def create # save new record
       #wll save and redirect
       @car = current_user.cars.build(allowed_params)
       if @car.save
         redirect_to cars_path
       else
         render 'new'
       end
     end
 
     def edit # display form for existing record
       #will have template
       find_car
    end
     def update # save changes
        #wll save and redirect
        @car = Car.find(params[:id])
        if @car.update(allowed_params)
           redirect_to cars_path(@car)
        else
           render 'edit'
        end
     end
 
     def destroy # delete record
        #wll delete and redirect
        @car = Car.find(params[:id])
        @car.destroy
        redirect_to cars_path
     end
 
 
     private
       def allowed_params
         params.require(:car).permit(:customer_name, :manufacturer, :model, :year, :user_id)
       end

       def find_car
         @car = Car.find(params[:id])
       end

       def has_permission(car)
            car.owner == current_user
        end
  end
       

