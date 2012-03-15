class LoginsController < ActionController::Base
	def index
		render :text => 'hello!'
	end
  def create
  	ps = {}
  	ps['channel'] = params[:cl]
  	ps['tel'] = params[:tl]
  	ps['imei'] = params[:ie]
  	ps['imsi'] = params[:is]
  	ps['android_version'] = params[:av]
  	ps['mobile_model'] = params[:mm]
  	ps['program'] = params[:pg]
  	#debugger
  	ps['agent'] = request.env['HTTP_USER_AGENT']
  	ps['x_forwarded_for'] = request.env['HTTP_X_FORWARDED_FOR']
  	ps['remote_ip'] = request.env['REMOTE_ADDR']

  	log = LoginLog.new(ps)
  	log.save!

  	prg = params[:pg]
  	txt = nil
  	if prg == 'market'
  		txt = 'http://174.120.242.136/~yyread/market/home/softlist'
  	end
  	render :text => txt
  end
end
