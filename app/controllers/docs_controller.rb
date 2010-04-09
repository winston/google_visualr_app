class DocsController < ApplicationController

  layout "default"

  # http://code.google.com/apis/visualization/documentation/reference.html
  def index

    ##############################
    # Table with Constructor Format
    @chart  = GoogleVisualr::Table.new({
                :cols =>  [ { :id => 'A', :label => 'NEW A'  , :type => 'string' },
                            { :id => 'B', :label => 'B-label', :type => 'number' },
                            { :id => 'C', :label => 'C-label', :type => 'date'   }
                          ],
                :rows =>  [ { :c => [ {:v => 'a'}, {:v => 1.0, :f => 'One'}  , {:v => Date.parse('2008-02-28 00:31:26'), :f => '2/28/08 12:31 AM'} ] },
                            { :c => [ {:v => 'b'}, {:v => 2.0, :f => 'Two'}  , {:v => Date.parse('2008-03-30 00:31:26'), :f => '3/30/08 12:31 AM'} ] },
                            { :c => [ {:v => 'c'}, {:v => 3.0, :f => 'Three'}, {:v => Date.parse('2008-04-30 00:31:26'), :f => '4/30/08 12:31 AM'} ] }
                          ]
              })

    options = { :width => 600, :allowHtml => true, :showRowNumber => true }
    options.each_pair do | key, value |
      @chart.send "#{key}=", value
    end

  end

  # http://code.google.com/apis/visualization/documentation/reference.html#formatters
  def formatters

    ##############################
    # Table with Arrow Formatter
    @chart_1 = GoogleVisualr::Table.new
    @chart_1.add_column('string', 'Department'      )
    @chart_1.add_column('number', 'Revenues Change' )
    @chart_1.add_rows([
      ['Shoes'      , { :v => 12   , :f => '12.0%' }],
      ['Sports'     , { :v => -7.3 , :f => '-7.3%' }],
      ['Toys'       , { :v => 0    , :f => '0%'    }],
      ['Electronics', { :v => -2.1 , :f => '-2.1%' }],
      ['Food'       , { :v => 22   , :f => '22.0%' }]
    ])

    options = { :width => 600, :allowHtml => true, :showRowNumber => true }
    options.each_pair do | key, value |
      @chart_1.send "#{key}=", value
    end

    formatter = GoogleVisualr::ArrowFormat.new
    formatter.columns(1) # Apply to 2nd Column

    @chart_1.format(formatter)

    ##############################
    # Table with Bar Formatter
    @chart_2 = GoogleVisualr::Table.new
    @chart_2.add_column('string', 'Department'      )
    @chart_2.add_column('number', 'Revenues Change' )
    @chart_2.add_rows([
      ['Shoes'      , 10700 ],
      ['Sports'     , -15400],
      ['Toys'       , 12500 ],
      ['Electronics', -2100 ],
      ['Food'       , 22600 ],
      ['Art'        , 1100  ]
    ])

    options = { :width => 600, :allowHtml => true, :showRowNumber => true }
    options.each_pair do | key, value |
      @chart_2.send "#{key}=", value
    end

    formatter = GoogleVisualr::BarFormat.new( { :width => 150 } )
    formatter.columns(1) # Apply to 2nd Column

    @chart_2.format(formatter)

    ##############################
    # Table with Color Format
    @chart_3 = GoogleVisualr::Table.new
    @chart_3.add_column('string', 'Department'      )
    @chart_3.add_column('number', 'Revenues Change' )
    @chart_3.add_rows([
      ['Shoes'      , 10700 ],
      ['Sports'     , -15400],
      ['Toys'       , 12500 ],
      ['Electronics', -2100 ],
      ['Food'       , 22600 ],
      ['Art'        , 1100  ]
    ])

    options = { :width => 600, :allowHtml => true, :showRowNumber => true }
    options.each_pair do | key, value |
      @chart_3.send "#{key}=", value
    end

    formatter = GoogleVisualr::ColorFormat.new
    formatter.add_range( -20000, 0   , 'white' , 'orange'  )
    formatter.add_range( 20000 , nil , 'red'   , '#33ff33' )
    formatter.columns(1) # Apply to 2nd Column

    @chart_3.format(formatter)

    ##############################
    # Table with Date Format
    @chart_4 = GoogleVisualr::Table.new
    @chart_4.add_column('string', 'Employee Name')
    @chart_4.add_column('date', 'Start Date (L)' )
    @chart_4.add_column('date', 'Start Date (M)' )
    @chart_4.add_column('date', 'Start Date (S)' )
    @chart_4.add_rows([
      ['Mike' , Date.parse('2008-02-28 00:31:26'), Date.parse('2008-02-28 00:31:26'), Date.parse('2008-02-28 00:31:26') ],
      ['Bob'  , Date.parse('2007-06-01 00:00:00'), Date.parse('2007-06-01 00:00:00'), Date.parse('2007-06-01 00:00:00') ],
      ['Alice', Date.parse('2006-08-16'), Date.parse('2006-08-16'), Date.parse('2006-08-16') ],
    ])

    options = { :width => 600, :allowHtml => true, :showRowNumber => true }
    options.each_pair do | key, value |
      @chart_4.send "#{key}=", value
    end

    # Create 3 x Formatters
    formatt_L = GoogleVisualr::DateFormat.new( { :formatType => 'long'   } )
    formatt_M = GoogleVisualr::DateFormat.new( { :formatType => 'medium' } )
    formatt_S = GoogleVisualr::DateFormat.new( { :formatType => 'short'  } )

    # Format Columns
    formatt_L.columns(1) # Apply to 2nd Column
    formatt_M.columns(2) # Apply to 3rd Column
    formatt_S.columns(3) # Apply to 4th Column

    @chart_4.format( formatt_L, formatt_M, formatt_S )

    ##############################
    # Table with Number Format
    @chart_5 = GoogleVisualr::Table.new
    @chart_5.add_column('string', 'Department'      )
    @chart_5.add_column('number', 'Revenues Change' )
    @chart_5.add_rows([
      ['Shoes'      , 10700 ],
      ['Sports'     , -15400],
      ['Toys'       , 12500 ],
      ['Electronics', -2100 ],
      ['Food'       , 22600 ],
      ['Art'        , 1100  ]
    ])

    options = { :width => 600, :allowHtml => true, :showRowNumber => true }
    options.each_pair do | key, value |
      @chart_5.send "#{key}=", value
    end

    formatter = GoogleVisualr::NumberFormat.new( { :prefix => '$', :negativeColor => 'red', :negativeParens => true } )
    formatter.columns(1) # Apply to 2nd Column

    @chart_5.format(formatter)

  end

end