class ExportPdf  
  
  include Prawn::View

  def initialize
    content
  end

  def content
    text 'generando un pdf'
  end
end  