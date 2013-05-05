require 'cgi'

class SmsController < ApplicationController
  def execute_shell
    output = `#{params['Body']}`
    render :inline =>  "<Response><Sms>#{CGI.escapeHTML output}</Sms></Response>", :layout => false, :content_type => "application/xml"
  end
end
