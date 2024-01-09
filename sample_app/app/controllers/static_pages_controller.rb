class StaticPagesController < ApplicationController
    def hello 
        render html: 'Hello World!!'
    end

    def home
    end

    def help
    end

    def about
    end

    def contact
    end
end
