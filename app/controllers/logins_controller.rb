class LoginsController < ActionController::Base
	def index
		render :text => 'hello!'
	end
  def create
  	log = LoginLog.new(params[:login])
  	log.save!
  	render :text => 'http://174.120.242.136/~yyread/market/home/softlist'
  end
end
