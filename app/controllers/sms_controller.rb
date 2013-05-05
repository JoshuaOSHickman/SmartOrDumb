class SmsController < ApplicationController
  def execute_shell
    command = String.new(params['Body'])
    command[0] = command[0].downcase
    {' pipe ' => ' | ', 'star' => '*'}.each do |control, shell|
      command = command.gsub(control, shell)
    end
    puts command
    output = `#{command}`
    puts output
    render :inline =>  "<Response><Sms>#{output.encode(:xml => :text)}</Sms></Response>", :layout => false, :content_type => "application/xml"
  end
end
