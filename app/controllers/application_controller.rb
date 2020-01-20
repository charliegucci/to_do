class ApplicationController < ActionController::Base
    before_action :set_user
def set_user 
 @list = List.new 
end
end
