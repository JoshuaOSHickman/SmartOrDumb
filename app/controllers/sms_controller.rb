require 'cgi'

class SmsController < ApplicationController
  def execute_shell
    command = params['Body'].dup
    command[0] = command[0].downcase
    {'pipe' => '|', 'star' => '*'}.each do |command, shell|
      command.gsub!(command, shell)
    end
    output = `#{command}`
    render :inline =>  "<Response><Sms>#{output.encode(:xml => :text)}</Sms></Response>", :layout => false, :content_type => "application/xml"
  end
end
