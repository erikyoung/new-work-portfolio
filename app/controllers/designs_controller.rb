class DesignsController < ApplicationController
    def cases
        @designs = Design.all
    end
    
    
end
