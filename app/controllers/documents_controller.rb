class DocumentsController < ApplicationController
  def new
    # declare a new object of document to be called in the new.html.erb
    @document = Document.new
    @document.sections.build
  end

  def create
    if document = Document.new(document_params).save
      render plain: "Successfully created document"
    else
      render plain: "Failed to create document"
    end
  end

  # whats the use of strong parameters strong paramteres act as the filter of your params
  # on this part for example i have another attribute called file
  # and file is not permitted as params of document even if file is pass
  # as params it this part will stash the params and get only what is permitted
  private def document_params
    params.require(:document).permit(:name, sections_attributes: [:id, :name, :_destroy])
  end
end
