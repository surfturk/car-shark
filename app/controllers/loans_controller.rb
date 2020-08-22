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
       @loan.build_car
       
     end
 
     def create # save new record
       #wll save and redirect
       @loan = current_user.loans.build(allowed_params)
       if @loan.save
         redirect_to loan_path(@loan)
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
         params.require(:loan).permit(:category, :amount, user:[:current_user], car_attributes: [:id])
       end

end


