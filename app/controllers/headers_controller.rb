class HeadersController < ActionController::Base
	def index
		if params[:p]
			@txt = '<table border="1">'
			for header in request.env.select {|k,v| true}
	  		@txt << '<tr><td>' << header[0].to_s << '</td><td>'
	  		@txt << header[1].to_s << '</td></tr>'
			end
			@txt << '</table>'
			h = Header.new(:dump => @txt)
			h.save!
		end
		@headers = Header.order('created_at desc').limit(20)
	end
	def show
		if params[:id] == 'delete'
			Header.delete_all
			redirect_to :action => :index
			return
		end
		@header = Header.find(params[:id])
	end
end
