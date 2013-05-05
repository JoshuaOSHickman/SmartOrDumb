class SmsController < ApplicationController
  def execute_shell
    p params
    render :inline =>  "<Response></Response>", :layout => false, :content_type => "application/xml"
  end
end
