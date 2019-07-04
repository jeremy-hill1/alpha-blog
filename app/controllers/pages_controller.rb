class PagesController < ApplicationController

def index
  rendirect_to articles_path if logged_in?
end

def about

end

end
