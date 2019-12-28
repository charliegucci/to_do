class HomeController < ApplicationController

def delete_list
    @delete_list = List.where(:completed => true).destroy_all
    redirect_to root_url, notice: 'All items done were successfully deleted.'
end 

def delete_all
    @delete_all = List.all.destroy_all
    redirect_to root_url, notice: 'All items were successfully deleted.'
end  


end