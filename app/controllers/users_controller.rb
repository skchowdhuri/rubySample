class UsersController < ApplicationController
  def index
    @result_error = ''

    if request.post?
      #Reading the params for email and password
      email = params[:email]
      password = params[:password]
      #Verifying the params not empty or not
      if email == "satya@terralogic.com" && password == "Satya"
        session[:email] = email;
        #If condition satisfies, Store in session and redirect to another page
        redirect_to :controller => 'dashboards',
        :action => 'index', :email => email, :password => password
      else # if values accepted and did not meet condition. It will come to else part
        @result_error = "Login Failed"
      end #params check end
    end # Request end
  end
end
