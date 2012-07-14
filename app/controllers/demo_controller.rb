class DemoController < ApplicationController
  def index
	# render(:action => 'hello')  	#action using the 'hello' page
	#render('hello') 		#same as: 	render('demo/hello')  same as: 	render(:template => 'demo/hello')
	

  end
     
  def redirect
    redirect_to(:controller => 'demo', :action => 'other')
    #redirect_to("http://www.lynda.com")
  end
  
  def hello
	   @array = [1,2,3,4,5]    #instance variable
	   @id = params[:id].to_i       #by default the params are in string. Chagne to int to add. Then ERB will convert back automatcially
	   @page = params[:page].to_i 
  end
  
  def other
	render(:text => "You've been redirected")
  end
  
  
end


#Template
#default template matching the action name. doesn't need any work
#render (:action => 'hello') 		is old school not as good
#render (:template => 'demo/hello') 	good but long
#render ('demo/hello')			good
#render ('hello')			good


#render vs redirect
#render url is the same
#redirect url changes