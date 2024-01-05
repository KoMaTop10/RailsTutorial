class ApplicationController < ActionController::Base
    def hello
        render html: '小町です'
    end
end
