class ApplicationController < ActionController::Base
    def hello
        render html:'Hello KoMa!'
    end
end
