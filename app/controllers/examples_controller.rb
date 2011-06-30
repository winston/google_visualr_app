class ExamplesController < ApplicationController

  layout "default"

  # http://code.google.com/apis/visualization/documentation/gallery/annotatedtimeline.html#Example
  def annotated_time_line

    @chart = GoogleVisualr::AnnotatedTimeLine.new
    @chart.add_column('date'  , 'Date')
    @chart.add_column('number', 'Sold Pencils')
    @chart.add_column('string', 'title1')
    @chart.add_column('string', 'text1' )
    @chart.add_column('number', 'Sold Pens'   )
    @chart.add_column('string', 'title2')
    @chart.add_column('string', 'text2' )
    @chart.add_rows( [
      [ Date.parse("2008-2-1"), 30000, '', '', 40645, '', ''],
      [ Date.parse("2008-2-2"), 14045, '', '', 20374, '', ''],
      [ Date.parse("2008-2-3"), 55022, '', '', 50766, '', ''],
      [ Date.parse("2008-2-4"), 75284, '', '', 14334, 'Out of Stock','Ran out of stock on pens at 4pm'],
      [ Date.parse("2008-2-5"), 41476, 'Bought Pens','Bought 200k pens', 66467, '', ''],
      [ Date.parse("2008-2-6"), 33322, '', '', 39463, '', '']
    ] )

    options = { :displayAnnotations => true }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/areachart.html#Example
  def area_chart

    @chart = GoogleVisualr::AreaChart.new
    @chart.add_column('string', 'Year')
    @chart.add_column('number', 'Sales')
    @chart.add_column('number', 'Expenses')
    @chart.add_rows(4)
    @chart.set_value(0, 0, '2004')
    @chart.set_value(0, 1, 1000)
    @chart.set_value(0, 2, 400)
    @chart.set_value(1, 0, '2005')
    @chart.set_value(1, 1, 1170)
    @chart.set_value(1, 2, 460)
    @chart.set_value(2, 0, '2006')
    @chart.set_value(2, 1, 1500)
    @chart.set_value(2, 2, 660)
    @chart.set_value(3, 0, '2007')
    @chart.set_value(3, 1, 1030)
    @chart.set_value(3, 2, 540)

    options = { :width => 400, :height => 240, :title => 'Company Performance', :legend => 'bottom' }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/barchart.html#Example
  def bar_chart

    @chart = GoogleVisualr::BarChart.new
    @chart.add_column('string', 'Year')
    @chart.add_column('number', 'Sales')
    @chart.add_column('number', 'Expenses')
    @chart.add_rows(4)
    @chart.set_value(0, 0, '2004')
    @chart.set_value(0, 1, 1000)
    @chart.set_value(0, 2, 400)
    @chart.set_value(1, 0, '2005')
    @chart.set_value(1, 1, 1170)
    @chart.set_value(1, 2, 460)
    @chart.set_value(2, 0, '2006')
    @chart.set_value(2, 1, 1500)
    @chart.set_value(2, 2, 660)
    @chart.set_value(3, 0, '2007')
    @chart.set_value(3, 1, 1030)
    @chart.set_value(3, 2, 540)

    options = { :width => 400, :height => 240, :title => 'Company Performance', :is3D => true }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/columnchart.html#Example
  def column_chart

    @chart = GoogleVisualr::ColumnChart.new
    @chart.add_column('string', 'Year')
    @chart.add_column('number', 'Sales')
    @chart.add_column('number', 'Expenses')
    @chart.add_rows(4)
    @chart.set_value(0, 0, '2004')
    @chart.set_value(0, 1, 1000)
    @chart.set_value(0, 2, 400)
    @chart.set_value(1, 0, '2005')
    @chart.set_value(1, 1, 1170)
    @chart.set_value(1, 2, 460)
    @chart.set_value(2, 0, '2006')
    @chart.set_value(2, 1, 1500)
    @chart.set_value(2, 2, 660)
    @chart.set_value(3, 0, '2007')
    @chart.set_value(3, 1, 1030)
    @chart.set_value(3, 2, 540)

    options = { :width => 400, :height => 240, :title => 'Company Performance', :is3D => true }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/gauge.html#Example
  def gauge

    @chart = GoogleVisualr::Gauge.new
    @chart.add_column('string'  , 'Label')
    @chart.add_column('number'  , 'Value')
    @chart.add_rows(3)
    @chart.set_value(0, 0, 'Memory' )
    @chart.set_value(0, 1, 80)
    @chart.set_value(1, 0, 'CPU'    )
    @chart.set_value(1, 1, 55)
    @chart.set_value(2, 0, 'Network')
    @chart.set_value(2, 1, 68);

    options = { :width => 400, :height => 120, :redFrom => 90, :redTo => 100, :yellowFrom => 75, :yellowTo => 90, :minorTicks => 5 }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/geomap.html#Example
  def geomap

    # Regions Example
    @chart_regions = GoogleVisualr::GeoMap.new
    @chart_regions.add_column('string'  , 'Country'   )
    @chart_regions.add_column('number'  , 'Popularity')
    @chart_regions.add_rows(6)
    @chart_regions.set_value(0, 0, 'Germany'      );
    @chart_regions.set_value(0, 1, 200);
    @chart_regions.set_value(1, 0, 'United States');
    @chart_regions.set_value(1, 1, 300);
    @chart_regions.set_value(2, 0, 'Brazil'       );
    @chart_regions.set_value(2, 1, 400);
    @chart_regions.set_value(3, 0, 'Canada'       );
    @chart_regions.set_value(3, 1, 500);
    @chart_regions.set_value(4, 0, 'France'       );
    @chart_regions.set_value(4, 1, 600);
    @chart_regions.set_value(5, 0, 'RU'           );
    @chart_regions.set_value(5, 1, 700);

    options = { :dataMode => 'regions' }
    options.each_pair do | key, value |
      @chart_regions.send "#{key}=", value
    end

    # Markers Example
    @chart_markers = GoogleVisualr::GeoMap.new
    @chart_markers.add_column('string'  , 'Country'   )
    @chart_markers.add_column('number'  , 'Popularity')
    @chart_markers.add_rows(6);
    @chart_markers.set_value(0, 0, 'New York'     );
    @chart_markers.set_value(0, 1, 200);
    @chart_markers.set_value(1, 0, 'Boston'       );
    @chart_markers.set_value(1, 1, 300);
    @chart_markers.set_value(2, 0, 'Miami'        );
    @chart_markers.set_value(2, 1, 400);
    @chart_markers.set_value(3, 0, 'Chicago'      );
    @chart_markers.set_value(3, 1, 500);
    @chart_markers.set_value(4, 0, 'Los Angeles'  );
    @chart_markers.set_value(4, 1, 600);
    @chart_markers.set_value(5, 0, 'Houston'      );
    @chart_markers.set_value(5, 1, 700);

    options = { :dataMode => 'markers', :region => 'US', :colors => ['0xFF8747', '0xFFB581', '0xc06000'] }
    options.each_pair do | key, value |
      @chart_markers.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/image_spark_line.html#Example
  def image_spark_line

    @chart = GoogleVisualr::ImageSparkLine.new
    @chart.add_column("number", "Revenue" )
    @chart.add_column("number", "Licenses")

    @chart.add_rows(10)

    @chart.set_value(0,0,435)
    @chart.set_value(1,0,438)
    @chart.set_value(2,0,512)
    @chart.set_value(3,0,460)
    @chart.set_value(4,0,491)
    @chart.set_value(5,0,487)
    @chart.set_value(6,0,552)
    @chart.set_value(7,0,511)
    @chart.set_value(8,0,505)
    @chart.set_value(9,0,509)

    @chart.set_value(0,1,132)
    @chart.set_value(1,1,131)
    @chart.set_value(2,1,137)
    @chart.set_value(3,1,142)
    @chart.set_value(4,1,140)
    @chart.set_value(5,1,139)
    @chart.set_value(6,1,147)
    @chart.set_value(7,1,146)
    @chart.set_value(8,1,151)
    @chart.set_value(9,1,149)

    options = { :width => 120, :height => 40, :showAxisLines => false,  :showValueLabels => false, :labelPosition => 'left' }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/intensitymap.html
  def intensity_map

    @chart = GoogleVisualr::IntensityMap.new
    @chart.add_column('string', '', 'Country')
    @chart.add_column('number', 'Population (mil)', 'a')
    @chart.add_column('number', 'Area (km2)'      , 'b')
    @chart.add_rows(5)
    @chart.set_value(0, 0, 'CN')
    @chart.set_value(0, 1, 1324)
    @chart.set_value(0, 2, 9640821)
    @chart.set_value(1, 0, 'IN')
    @chart.set_value(1, 1, 1133)
    @chart.set_value(1, 2, 3287263)
    @chart.set_value(2, 0, 'US')
    @chart.set_value(2, 1, 304 )
    @chart.set_value(2, 2, 9629091)
    @chart.set_value(3, 0, 'ID')
    @chart.set_value(3, 1, 232 )
    @chart.set_value(3, 2, 1904569)
    @chart.set_value(4, 0, 'BR')
    @chart.set_value(4, 1, 187 )
    @chart.set_value(4, 2, 8514877)

  end

  # http://code.google.com/apis/visualization/documentation/gallery/linechart.html#Example
  def line_chart

    @chart = GoogleVisualr::LineChart.new
    @chart.add_column('string', 'Year')
    @chart.add_column('number', 'Sales')
    @chart.add_column('number', 'Expenses')
    @chart.add_rows(4)
    @chart.set_value(0, 0, '2004')
    @chart.set_value(0, 1, 1000)
    @chart.set_value(0, 2, 400)
    @chart.set_value(1, 0, '2005')
    @chart.set_value(1, 1, 1170)
    @chart.set_value(1, 2, 460)
    @chart.set_value(2, 0, '2006')
    @chart.set_value(2, 1, 1500)
    @chart.set_value(2, 2, 660)
    @chart.set_value(3, 0, '2007')
    @chart.set_value(3, 1, 1030)
    @chart.set_value(3, 2, 540)

    options = { :width => 400, :height => 240, :title => 'Company Performance', :legend => 'bottom' }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/map.html
  def map

    @chart = GoogleVisualr::Map.new
    @chart.add_column('number', 'Lat' )
    @chart.add_column('number', 'Lon' )
    @chart.add_column('string', 'Name')
    @chart.add_rows(4)
    @chart.set_cell(0, 0, 37.4232   )
    @chart.set_cell(0, 1, -122.0853 )
    @chart.set_cell(0, 2, 'Work'      )
    @chart.set_cell(1, 0, 37.4289   )
    @chart.set_cell(1, 1, -122.1697 )
    @chart.set_cell(1, 2, 'University')
    @chart.set_cell(2, 0, 37.6153   )
    @chart.set_cell(2, 1, -122.3900 )
    @chart.set_cell(2, 2, 'Airport'   )
    @chart.set_cell(3, 0, 37.4422   )
    @chart.set_cell(3, 1, -122.1731 )
    @chart.set_cell(3, 2, 'Shopping'  )

    options = { :showTip => true }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/motionchart.html#Example
  def motion_chart

    @chart = GoogleVisualr::MotionChart.new
    @chart.add_column('string', 'Fruit'   )
    @chart.add_column('date'  , 'Date'    )
    @chart.add_column('number', 'Sales'   )
    @chart.add_column('number', 'Expenses')
    @chart.add_column('string', 'Location')
    @chart.add_rows([
      ['Apples' ,Date.parse("1988-01-01"),1000,300,'East'],
      ['Oranges',Date.parse("1988-01-01"),1150,200,'West'],
      ['Bananas',Date.parse("1988-01-01"),300 ,250,'West'],
      ['Apples' ,Date.parse("1989-07-01"),1200,400,'East'],
      ['Oranges',Date.parse("1989-07-01"),750 ,150,'West'],
      ['Bananas',Date.parse("1989-07-01"),788 ,617,'West']
    ])

    options = { :width => 600, :height => 300 }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/orgchart.html#Example
  def org_chart

    @chart = GoogleVisualr::OrgChart.new
    @chart.add_column('string', 'Name'   )
    @chart.add_column('string', 'Manager')
    @chart.add_column('string', 'ToolTip')
    @chart.add_rows( [
      [ {:v => 'Mike', :f => 'Mike<div style="color:red; font-style:italic">President</div>'   }, ''    , 'The President' ],
      [ {:v => 'Jim' , :f => 'Jim<div style="color:red; font-style:italic">Vice President<div>'}, 'Mike', 'VP'            ],
      [ 'Alice'  , 'Mike', ''           ],
      [ 'Bob'    , 'Jim' , 'Bob Sponge' ],
      [ 'Carol'  , 'Bob' , ''           ]
    ] )

    options = { :allowHtml => true }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/piechart.html#Example
  def pie_chart

    @chart = GoogleVisualr::PieChart.new
    @chart.add_column('string', 'Task')
    @chart.add_column('number', 'Hours per Day')
    @chart.add_rows(5)
    @chart.set_value(0, 0, 'Work'     )
    @chart.set_value(0, 1, 11 )
    @chart.set_value(1, 0, 'Eat'      )
    @chart.set_value(1, 1, 2  )
    @chart.set_value(2, 0, 'Commute'  )
    @chart.set_value(2, 1, 2  )
    @chart.set_value(3, 0, 'Watch TV' )
    @chart.set_value(3, 1, 2  )
    @chart.set_value(4, 0, 'Sleep'    )
    @chart.set_value(4, 1, 7  )

    options = { :width => 400, :height => 240, :title => 'My Daily Activities', :is3D => true }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/scatterchart.html#Example
  def scatter_chart

    @chart = GoogleVisualr::ScatterChart.new
    @chart.add_column('number', 'Age')
    @chart.add_column('number', 'Weight')
    @chart.add_rows(6)
    @chart.set_value( 0, 0, 8  )
    @chart.set_value( 0, 1, 12 )
    @chart.set_value( 1, 0, 4  )
    @chart.set_value( 1, 1, 5.5)
    @chart.set_value( 2, 0, 11 )
    @chart.set_value( 2, 1, 14 )
    @chart.set_value( 3, 0, 4  )
    @chart.set_value( 3, 1, 5  )
    @chart.set_value( 4, 0, 3  )
    @chart.set_value( 4, 1, 3.5)
    @chart.set_value( 5, 0, 6.5)
    @chart.set_value( 5, 1, 7  )

    options = { :width => 400, :height => 240, :titleX => 'Age', :titleY => 'Weight', :legend => 'none', :pointSize => 5 }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/gallery/table.html#Example
  def table

    @chart = GoogleVisualr::Table.new
    @chart.add_column('string'  , 'Name')
    @chart.add_column('number'  , 'Salary')
    @chart.add_column('boolean' , 'Full Time Employee')
    @chart.add_rows(4)
    @chart.set_cell(0, 0, 'Mike'  )
    @chart.set_cell(0, 1, 10000, '$10,000')
    @chart.set_cell(0, 2, true  )
    @chart.set_cell(1, 0, 'Jim'   )
    @chart.set_cell(1, 1, 8000, '$8,000'  )
    @chart.set_cell(1, 2, false )
    @chart.set_cell(2, 0, 'Alice' )
    @chart.set_cell(2, 1, 12500, '$12,500')
    @chart.set_cell(2, 2, true  )
    @chart.set_cell(3, 0, 'Bob'   )
    @chart.set_cell(3, 1, 7000, '$7,000'  )
    @chart.set_cell(3, 2, true  )

    options = { :width => 600, :showRowNumber => true }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

end