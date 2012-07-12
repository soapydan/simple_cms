class DemoController < ApplicationController
  def index
	# render(:action => 'hello')  	#action using the 'hello' page
	#render('hello') 		#same as: 	render('demo/hello')  same as: 	render(:template => 'demo/hello')
	
	redirect_to(:controller => 'demo', :action => 'other_hello')
  end
  
  def hello
	#redirect_to("http://www.lynda.com")
  end
  
  def other_hello
	render(:text => "Hello Everyone")
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