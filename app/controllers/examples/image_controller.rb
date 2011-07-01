class Examples::ImageController < ApplicationController

  layout "default"

  # http://code.google.com/apis/chart/interactive/docs/gallery/imagesparkline.html#Example
  def spark_line

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column("number", "Revenue" )
    data_table.new_column("number", "Licenses")

    data_table.add_rows(10)

    data_table.set_cell(0,0,435)
    data_table.set_cell(1,0,438)
    data_table.set_cell(2,0,512)
    data_table.set_cell(3,0,460)
    data_table.set_cell(4,0,491)
    data_table.set_cell(5,0,487)
    data_table.set_cell(6,0,552)
    data_table.set_cell(7,0,511)
    data_table.set_cell(8,0,505)
    data_table.set_cell(9,0,509)

    data_table.set_cell(0,1,132)
    data_table.set_cell(1,1,131)
    data_table.set_cell(2,1,137)
    data_table.set_cell(3,1,142)
    data_table.set_cell(4,1,140)
    data_table.set_cell(5,1,139)
    data_table.set_cell(6,1,147)
    data_table.set_cell(7,1,146)
    data_table.set_cell(8,1,151)
    data_table.set_cell(9,1,149)

    opts   = { :width => 120, :height => 40, :showAxisLines => false,  :showValueLabels => false, :labelPosition => 'left' }
    @chart = GoogleVisualr::Image::SparkLine.new(data_table, opts)

  end

end
