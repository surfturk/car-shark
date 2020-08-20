class LoansController < ApplicationController

    def index # show all records
        #will have template
        @loans = Loan.all
     end
 
     def show # show single record
       #will have template
       @loan = Loan.find(params[:id])
     end
 
     def new # display form for new record
       #will have template
       @loan = Loan.new
       @cars = Car.all
     end
 
     def create # save new record
       #wll save and redirect
       @loan = Loan.new(allowed_params)
       if @loan.valid?
          @loan.save
         redirect_to loans_path
       else
         render 'new'
       end
     end
 
     def edit # display form for existing record
       #will have template
       @loan = Loan.find(params[:id])
     end
 
     def update # save changes
        #wll save and redirect
        @loan = Loan.find(params[:id])
        if @loan.update(allowed_params)
           redirect_to loans_path(@loan)
        else
           render 'edit'
        end
     end
 
     def destroy # delete record
        #wll delete and redirect
        @loan = Loan.find(params[:id])
        @loan.destroy
        redirect_to loans_path
     end
 
 
     private
       def allowed_params
         params.require(:loan).permit(:category, :amount, :car_manufacturer)
       end
end