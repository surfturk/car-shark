class LoansController < ApplicationController
    

  
    def index 
         @loans = current_user.loans.all
    end

    def fixed
      @loans = current_user.loans
      render :index
    end
 
     def show # show single record
       #will have template
       @loan = Loan.find(params[:id])
     end
 
     def new # display form for new record
       #will have template
       @loan = Loan.new
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
       #will have templateif
       if
       @loan = current_user.loans.find(params[:id])
       else
        render 'loans'
       end  
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
         params.require(:loan).permit(:category, :amount, :user_id, :car_id)
       end

       


end


