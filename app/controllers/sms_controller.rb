class SmsController < ApplicationController
  def execute_shell
    Rails.logger.error params
    render :inline =>  "<Response></Response>", :layout => false, :content_type => "application/xml"
  end
end
