class DocumentsController < ApplicationController
  def new
    # declare a new object of document to be called in the new.html.erb
    @document = Document.new
  end
end
