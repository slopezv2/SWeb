module DeltaHelper
    
    def mobile_device?
        if session[:mobile_param]
            return true
        else
            request.user_agent =~ /Mobile|webOS/
        end
    end
end
