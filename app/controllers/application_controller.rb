class ApplicationController < ActionController::Base
    before_action :set_user
def set_user 
 @list = List.new
 @list.user = current_user 
end
end
