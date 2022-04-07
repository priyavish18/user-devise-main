module ApplicationHelper




    def current_order
        if !session[:order_id].nil? 
            Order.find(session[:order_id])
        else
            Order.new
        end
    end


    # application_helper.rb
    # def not_logged_in(&block)
    #   capture(&block) unless session[:user_id]
    # end

    # def logged_in(&block)
    #   capture(&block) if session[:user_id]
    # end

end
