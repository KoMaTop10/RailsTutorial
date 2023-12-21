class ApplicationController < ActionController::Base
    def hello
        render html:'Hello KoMaChi!'
    end
end
