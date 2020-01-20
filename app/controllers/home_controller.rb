class HomeController < ApplicationController
    before_action :authenticate_user!
def delete_list
    @delete_list = current_user.list.where(:completed => true).destroy_all
    redirect_to root_url, notice: 'All items done were successfully deleted.'
end 

def delete_all
    @delete_all = current_user.list.all.destroy_all
    redirect_to root_url, notice: 'All your created items were successfully deleted.'
end  

  end