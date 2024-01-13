class ApplicationController < ActionController::Base
    include SessionsHelper
    def hello
        render html: '小町です'
    end
end
