class ExamplesController < ApplicationController

  layout "default"

  # http://code.google.com/apis/visualization/documentation/gallery/annotatedtimeline.html#Example
  def annotated_time_line

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('date'  , 'Date')
    data_table.new_column('number', 'Sold Pencils')
    data_table.new_column('string', 'title1')
    data_table.new_column('string', 'text1' )
    data_table.new_column('number', 'Sold Pens'   )
    data_table.new_column('string', 'title2')
    data_table.new_column('string', 'text2' )
    data_table.add_rows( [
      [ Date.parse("2008-2-1"), 30000, '', '', 40645, '', ''],
      [ Date.parse("2008-2-2"), 14045, '', '', 20374, '', ''],
      [ Date.parse("2008-2-3"), 55022, '', '', 50766, '', ''],
      [ Date.parse("2008-2-4"), 75284, '', '', 14334, 'Out of Stock','Ran out of stock on pens at 4pm'],
      [ Date.parse("2008-2-5"), 41476, 'Bought Pens','Bought 200k pens', 66467, '', ''],
      [ Date.parse("2008-2-6"), 33322, '', '', 39463, '', '']
    ] )

    opts   = { :displayAnnotations => true }
    @chart = GoogleVisualr::Interactive::AnnotatedTimeLine.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/areachart.html#Example
  def area_chart

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Year')
    data_table.new_column('number', 'Sales')
    data_table.new_column('number', 'Expenses')
    data_table.add_rows( [
      ['2004', 1000, 400],
      ['2005', 1170, 460],
      ['2006', 660, 1120],
      ['2007', 1030, 540]
    ])

    opts   = { width: 400, height: 240, title: 'Company Performance', hAxis: {title: 'Year', titleTextStyle: {color: '#FF0000'}} }
    @chart = GoogleVisualr::Interactive::AreaChart.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/barchart.html#Example
  def bar_chart

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Year')
    data_table.new_column('number', 'Sales')
    data_table.new_column('number', 'Expenses')
    data_table.add_rows(4)
    data_table.set_cell(0, 0, '2004')
    data_table.set_cell(0, 1, 1000)
    data_table.set_cell(0, 2, 400)
    data_table.set_cell(1, 0, '2005')
    data_table.set_cell(1, 1, 1170)
    data_table.set_cell(1, 2, 460)
    data_table.set_cell(2, 0, '2006')
    data_table.set_cell(2, 1, 660)
    data_table.set_cell(2, 2, 1120)
    data_table.set_cell(3, 0, '2007')
    data_table.set_cell(3, 1, 1030)
    data_table.set_cell(3, 2, 540)

    opts   = { :width => 400, :height => 240, :title => 'Company Performance', vAxis: {title: 'Year', titleTextStyle: {color: 'red'}} }
    @chart = GoogleVisualr::Interactive::BarChart.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/columnchart.html#Example
  def column_chart

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Year')
    data_table.new_column('number', 'Sales')
    data_table.new_column('number', 'Expenses')
    data_table.add_rows(4)
    data_table.set_cell(0, 0, '2004')
    data_table.set_cell(0, 1, 1000)
    data_table.set_cell(0, 2, 400)
    data_table.set_cell(1, 0, '2005')
    data_table.set_cell(1, 1, 1170)
    data_table.set_cell(1, 2, 460)
    data_table.set_cell(2, 0, '2006')
    data_table.set_cell(2, 1, 660)
    data_table.set_cell(2, 2, 1120)
    data_table.set_cell(3, 0, '2007')
    data_table.set_cell(3, 1, 1030)
    data_table.set_cell(3, 2, 540)

    opts   = { :width => 400, :height => 240, :title => 'Company Performance', :hAxis => { :title => 'Year', :titleTextStyle => {:color => 'red'}} }
    @chart = GoogleVisualr::Interactive::ColumnChart.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/gauge.html#Example
  def gauge

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string'  , 'Label')
    data_table.new_column('number'  , 'Value')
    data_table.add_rows(3)
    data_table.set_cell(0, 0, 'Memory' )
    data_table.set_cell(0, 1, 80)
    data_table.set_cell(1, 0, 'CPU'    )
    data_table.set_cell(1, 1, 55)
    data_table.set_cell(2, 0, 'Network')
    data_table.set_cell(2, 1, 68);


    opts   = { :width => 400, :height => 120, :redFrom => 90, :redTo => 100, :yellowFrom => 75, :yellowTo => 90, :minorTicks => 5 }
    @chart = GoogleVisualr::Interactive::Gauge.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/geochart.html#Example
  def geo_chart

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Country')
    data_table.new_column('number', 'Popularity')
    data_table.add_rows(6)
    data_table.set_cell(0, 0, 'Germany')
    data_table.set_cell(0, 1, 200)
    data_table.set_cell(1, 0, 'United States')
    data_table.set_cell(1, 1, 300)
    data_table.set_cell(2, 0, 'Brazil')
    data_table.set_cell(2, 1, 400)
    data_table.set_cell(3, 0, 'Canada')
    data_table.set_cell(3, 1, 500)
    data_table.set_cell(4, 0, 'France')
    data_table.set_cell(4, 1, 600)
    data_table.set_cell(5, 0, 'RU')
    data_table.set_cell(5, 1, 700)

    opts   = { :width => 500, :height => 300 }
    @chart = GoogleVisualr::Interactive::GeoChart.new(data_table, opts)

  end


  # http://code.google.com/apis/visualization/documentation/gallery/geomap.html#Example
  def geomap

    # Regions Example
    data_table_regions = GoogleVisualr::GeoMap.new
    data_table_regions.new_column('string'  , 'Country'   )
    data_table_regions.new_column('number'  , 'Popularity')
    data_table_regions.add_rows(6)
    data_table_regions.set_cell(0, 0, 'Germany'      );
    data_table_regions.set_cell(0, 1, 200);
    data_table_regions.set_cell(1, 0, 'United States');
    data_table_regions.set_cell(1, 1, 300);
    data_table_regions.set_cell(2, 0, 'Brazil'       );
    data_table_regions.set_cell(2, 1, 400);
    data_table_regions.set_cell(3, 0, 'Canada'       );
    data_table_regions.set_cell(3, 1, 500);
    data_table_regions.set_cell(4, 0, 'France'       );
    data_table_regions.set_cell(4, 1, 600);
    data_table_regions.set_cell(5, 0, 'RU'           );
    data_table_regions.set_cell(5, 1, 700);

    options = { :dataMode => 'regions' }
    options.each_pair do | key, value |
      data_table_regions.send "#{key}=", value
    end

    # Markers Example
    data_table_markers = GoogleVisualr::GeoMap.new
    data_table_markers.new_column('string'  , 'Country'   )
    data_table_markers.new_column('number'  , 'Popularity')
    data_table_markers.add_rows(6);
    data_table_markers.set_cell(0, 0, 'New York'     );
    data_table_markers.set_cell(0, 1, 200);
    data_table_markers.set_cell(1, 0, 'Boston'       );
    data_table_markers.set_cell(1, 1, 300);
    data_table_markers.set_cell(2, 0, 'Miami'        );
    data_table_markers.set_cell(2, 1, 400);
    data_table_markers.set_cell(3, 0, 'Chicago'      );
    data_table_markers.set_cell(3, 1, 500);
    data_table_markers.set_cell(4, 0, 'Los Angeles'  );
    data_table_markers.set_cell(4, 1, 600);
    data_table_markers.set_cell(5, 0, 'Houston'      );
    data_table_markers.set_cell(5, 1, 700);

    options = { :dataMode => 'markers', :region => 'US', :colors => ['0xFF8747', '0xFFB581', '0xc06000'] }
    options.each_pair do | key, value |
      data_table_markers.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/image_spark_line.html#Example
  def image_spark_line

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
    @chart = GoogleVisualr::Image::ImageSparkLine.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/intensitymap.html
  def intensity_map

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', '', 'Country')
    data_table.new_column('number', 'Population (mil)', 'a')
    data_table.new_column('number', 'Area (km2)'      , 'b')
    data_table.add_rows(5)
    data_table.set_cell(0, 0, 'CN')
    data_table.set_cell(0, 1, 1324)
    data_table.set_cell(0, 2, 9640821)
    data_table.set_cell(1, 0, 'IN')
    data_table.set_cell(1, 1, 1133)
    data_table.set_cell(1, 2, 3287263)
    data_table.set_cell(2, 0, 'US')
    data_table.set_cell(2, 1, 304 )
    data_table.set_cell(2, 2, 9629091)
    data_table.set_cell(3, 0, 'ID')
    data_table.set_cell(3, 1, 232 )
    data_table.set_cell(3, 2, 1904569)
    data_table.set_cell(4, 0, 'BR')
    data_table.set_cell(4, 1, 187 )
    data_table.set_cell(4, 2, 8514877)

    opts   = {}
    @chart = GoogleVisualr::Interactive::IntensityMap.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/linechart.html#Example
  def line_chart

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Year')
    data_table.new_column('number', 'Sales')
    data_table.new_column('number', 'Expenses')
    data_table.add_rows(4)
    data_table.set_cell(0, 0, '2004')
    data_table.set_cell(0, 1, 1000)
    data_table.set_cell(0, 2, 400)
    data_table.set_cell(1, 0, '2005')
    data_table.set_cell(1, 1, 1170)
    data_table.set_cell(1, 2, 460)
    data_table.set_cell(2, 0, '2006')
    data_table.set_cell(2, 1, 860)
    data_table.set_cell(2, 2, 580)
    data_table.set_cell(3, 0, '2007')
    data_table.set_cell(3, 1, 1030)
    data_table.set_cell(3, 2, 540)

    opts   = { :width => 400, :height => 240, :title => 'Company Performance', :legend => 'bottom' }
    @chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/map.html
  def map

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('number', 'Lat' )
    data_table.new_column('number', 'Lon' )
    data_table.new_column('string', 'Name')
    data_table.add_rows(4)
    data_table.set_cell(0, 0, 37.4232   )
    data_table.set_cell(0, 1, -122.0853 )
    data_table.set_cell(0, 2, 'Work'      )
    data_table.set_cell(1, 0, 37.4289   )
    data_table.set_cell(1, 1, -122.1697 )
    data_table.set_cell(1, 2, 'University')
    data_table.set_cell(2, 0, 37.6153   )
    data_table.set_cell(2, 1, -122.3900 )
    data_table.set_cell(2, 2, 'Airport'   )
    data_table.set_cell(3, 0, 37.4422   )
    data_table.set_cell(3, 1, -122.1731 )
    data_table.set_cell(3, 2, 'Shopping'  )

    opts   = { :showTip => true }
    @chart = GoogleVisualr::Interactive::Map.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/motionchart.html#Example
  def motion_chart

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Fruit'   )
    data_table.new_column('date'  , 'Date'    )
    data_table.new_column('number', 'Sales'   )
    data_table.new_column('number', 'Expenses')
    data_table.new_column('string', 'Location')
    data_table.add_rows([
      ['Apples' ,Date.parse("1988-01-01"),1000,300,'East'],
      ['Oranges',Date.parse("1988-01-01"),1150,200,'West'],
      ['Bananas',Date.parse("1988-01-01"),300 ,250,'West'],
      ['Apples' ,Date.parse("1989-07-01"),1200,400,'East'],
      ['Oranges',Date.parse("1989-07-01"),750 ,150,'West'],
      ['Bananas',Date.parse("1989-07-01"),788 ,617,'West']
    ])

    opts   = { :width => 600, :height => 300 }
    @chart = GoogleVisualr::Interactive::MotionChart.new(data_table, opts)
    
  end

  # http://code.google.com/apis/visualization/documentation/gallery/orgchart.html#Example
  def org_chart

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Name'   )
    data_table.new_column('string', 'Manager')
    data_table.new_column('string', 'ToolTip')
    data_table.add_rows( [
      [ {:v => 'Mike', :f => 'Mike<div style="color:red; font-style:italic">President</div>'   }, ''    , 'The President' ],
      [ {:v => 'Jim' , :f => 'Jim<div style="color:red; font-style:italic">Vice President<div>'}, 'Mike', 'VP'            ],
      [ 'Alice'  , 'Mike', ''           ],
      [ 'Bob'    , 'Jim' , 'Bob Sponge' ],
      [ 'Carol'  , 'Bob' , ''           ]
    ] )

    opts   = { :allowHtml => true }
    @chart = GoogleVisualr::Interactive::OrgChart.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/piechart.html#Example
  def pie_chart

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Task')
    data_table.new_column('number', 'Hours per Day')
    data_table.add_rows(5)
    data_table.set_cell(0, 0, 'Work'     )
    data_table.set_cell(0, 1, 11 )
    data_table.set_cell(1, 0, 'Eat'      )
    data_table.set_cell(1, 1, 2  )
    data_table.set_cell(2, 0, 'Commute'  )
    data_table.set_cell(2, 1, 2  )
    data_table.set_cell(3, 0, 'Watch TV' )
    data_table.set_cell(3, 1, 2  )
    data_table.set_cell(4, 0, 'Sleep'    )
    data_table.set_cell(4, 1, 7  )

    opts   = { :width => 400, :height => 240, :title => 'My Daily Activities', :is3D => true }
    @chart = GoogleVisualr::Interactive::PieChart.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/scatterchart.html#Example
  def scatter_chart

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('number', 'Age')
    data_table.new_column('number', 'Weight')
    data_table.add_rows(6)
    data_table.set_cell( 0, 0, 8  )
    data_table.set_cell( 0, 1, 12 )
    data_table.set_cell( 1, 0, 4  )
    data_table.set_cell( 1, 1, 5.5)
    data_table.set_cell( 2, 0, 11 )
    data_table.set_cell( 2, 1, 14 )
    data_table.set_cell( 3, 0, 4  )
    data_table.set_cell( 3, 1, 4.5)
    data_table.set_cell( 4, 0, 3  )
    data_table.set_cell( 4, 1, 3.5)
    data_table.set_cell( 5, 0, 6.5)
    data_table.set_cell( 5, 1, 7  )

    opts   = { :width => 400, :height => 240, :title => 'Age vs. Weight comparison',
               :hAxis => { :title => 'Age'    , :minValue => 0, :maxValue => 15 },
               :vAxis => { :title => 'Weight' , :minValue => 0, :maxValue => 15 },
               :legend => 'none' }
    @chart = GoogleVisualr::Interactive::ScatterChart.new(data_table, opts)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/table.html#Example
  def table

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string'  , 'Name')
    data_table.new_column('number'  , 'Salary')
    data_table.new_column('boolean' , 'Full Time Employee')
    data_table.add_rows(4)
    data_table.set_cell(0, 0, 'Mike'  )
    data_table.set_cell(0, 1, {:v => 10000, :f => '$10,000'})
    data_table.set_cell(0, 2, true  )
    data_table.set_cell(1, 0, 'Jim'   )
    data_table.set_cell(1, 1, {:v => 8000 , :f => '$8,000' })
    data_table.set_cell(1, 2, false )
    data_table.set_cell(2, 0, 'Alice' )
    data_table.set_cell(2, 1, {:v => 12500, :f => '$12,500'})
    data_table.set_cell(2, 2, true  )
    data_table.set_cell(3, 0, 'Bob'   )
    data_table.set_cell(3, 1, {:v => 7000 , :f => '$7,000' })
    data_table.set_cell(3, 2, true  )

    opts   = { :width => 600, :showRowNumber => true }
    @chart = GoogleVisualr::Interactive::Table.new(data_table, opts)

  end

end