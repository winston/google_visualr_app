class DocsController < ApplicationController

  layout "default"

  # http://code.google.com/apis/chart/interactive/docs/reference.html
  def index

    ##############################
    # Table with Constructor Format
    data_table  = GoogleVisualr::DataTable.new({
                    :cols =>  [ { :id => 'A', :label => 'NEW A'  , :type => 'string' },
                                { :id => 'B', :label => 'B-label', :type => 'number' },
                                { :id => 'C', :label => 'C-label', :type => 'date'   }
                              ],
                    :rows =>  [ { :c => [ {:v => 'a'}, {:v => 1.0, :f => 'One'}  , {:v => Date.parse('2008-02-28 00:31:26'), :f => '2/28/08 12:31 AM'} ] },
                                { :c => [ {:v => 'b'}, {:v => 2.0, :f => 'Two'}  , {:v => Date.parse('2008-03-30 00:31:26'), :f => '3/30/08 12:31 AM'} ] },
                                { :c => [ {:v => 'c'}, {:v => 3.0, :f => 'Three'}, {:v => Date.parse('2008-04-30 00:31:26'), :f => '4/30/08 12:31 AM'} ] }
                              ]
                  })

    opts   = { :width => 600, :allowHtml => true, :showRowNumber => true }
    @chart = GoogleVisualr::Interactive::Table.new(data_table, opts)

  end

  # http://code.google.com/apis/chart/interactive/docs/reference.html#formatters
  def formatters

    ##############################
    # Table with Arrow Formatter
    data_table_1 = GoogleVisualr::DataTable.new
    data_table_1.new_column('string', 'Department'      )
    data_table_1.new_column('number', 'Revenues Change' )
    data_table_1.add_rows([
      ['Shoes'      , { :v => 12   , :f => '12.0%' }],
      ['Sports'     , { :v => -7.3 , :f => '-7.3%' }],
      ['Toys'       , { :v => 0    , :f => '0%'    }],
      ['Electronics', { :v => -2.1 , :f => '-2.1%' }],
      ['Food'       , { :v => 22   , :f => '22.0%' }]
    ])

    formatter = GoogleVisualr::ArrowFormat.new
    formatter.columns(1) # Apply to 2nd Column

    data_table_1.format(formatter)

    opts     = { :width => 600, :allowHtml => true, :showRowNumber => true }
    @chart_1 = GoogleVisualr::Interactive::Table.new(data_table_1, opts)

    ##############################
    # Table with Bar Formatter
    data_table_2 = GoogleVisualr::DataTable.new
    data_table_2.new_column('string', 'Department'      )
    data_table_2.new_column('number', 'Revenues Change' )
    data_table_2.add_rows([
      ['Shoes'      , 10700 ],
      ['Sports'     , -15400],
      ['Toys'       , 12500 ],
      ['Electronics', -2100 ],
      ['Food'       , 22600 ],
      ['Art'        , 1100  ]
    ])

    formatter = GoogleVisualr::BarFormat.new( { :width => 150 } )
    formatter.columns(1) # Apply to 2nd Column

    data_table_2.format(formatter)

    opts     = { :width => 600, :allowHtml => true, :showRowNumber => true }
    @chart_2 = GoogleVisualr::Interactive::Table.new(data_table_2, opts)

    ##############################
    # Table with Color Format
    data_table_3 = GoogleVisualr::DataTable.new
    data_table_3.new_column('string', 'Department'      )
    data_table_3.new_column('number', 'Revenues Change' )
    data_table_3.add_rows([
      ['Shoes'      , 10700 ],
      ['Sports'     , -15400],
      ['Toys'       , 12500 ],
      ['Electronics', -2100 ],
      ['Food'       , 22600 ],
      ['Art'        , 1100  ]
    ])

    formatter = GoogleVisualr::ColorFormat.new
    formatter.add_range( -20000, 0   , 'white' , 'orange'  )
    formatter.add_range( 20000 , nil , 'red'   , '#33ff33' )
    formatter.columns(1) # Apply to 2nd Column

    data_table_3.format(formatter)

    opts     = { :width => 600, :allowHtml => true, :showRowNumber => true }
    @chart_3 = GoogleVisualr::Interactive::Table.new(data_table_3, opts)

    ##############################
    # Table with Date Format
    data_table_4 = GoogleVisualr::DataTable.new
    data_table_4.new_column('string', 'Employee Name')
    data_table_4.new_column('date', 'Start Date (L)' )
    data_table_4.new_column('date', 'Start Date (M)' )
    data_table_4.new_column('date', 'Start Date (S)' )
    data_table_4.add_rows([
      ['Mike' , Date.parse('2008-02-28 00:31:26'), Date.parse('2008-02-28 00:31:26'), Date.parse('2008-02-28 00:31:26') ],
      ['Bob'  , Date.parse('2007-06-01 00:00:00'), Date.parse('2007-06-01 00:00:00'), Date.parse('2007-06-01 00:00:00') ],
      ['Alice', Date.parse('2006-08-16'), Date.parse('2006-08-16'), Date.parse('2006-08-16') ],
    ])

    # Create 3 x Formatters
    formatter_L = GoogleVisualr::DateFormat.new( { :formatType => 'long'   } )
    formatter_M = GoogleVisualr::DateFormat.new( { :formatType => 'medium' } )
    formatter_S = GoogleVisualr::DateFormat.new( { :formatType => 'short'  } )

    # Format Columns
    formatter_L.columns(1) # Apply to 2nd Column
    formatter_M.columns(2) # Apply to 3rd Column
    formatter_S.columns(3) # Apply to 4th Column

    data_table_4.format( formatter_L, formatter_M, formatter_S )

    opts     = { :width => 600, :allowHtml => true, :showRowNumber => true }
    @chart_4 = GoogleVisualr::Interactive::Table.new(data_table_4, opts)

    ##############################
    # Table with Number Format
    data_table_5 = GoogleVisualr::DataTable.new
    data_table_5.new_column('string', 'Department'      )
    data_table_5.new_column('number', 'Revenues Change' )
    data_table_5.add_rows([
      ['Shoes'      , 10700 ],
      ['Sports'     , -15400],
      ['Toys'       , 12500 ],
      ['Electronics', -2100 ],
      ['Food'       , 22600 ],
      ['Art'        , 1100  ]
    ])

    formatter = GoogleVisualr::NumberFormat.new( { :prefix => '$', :negativeColor => 'red', :negativeParens => true } )
    formatter.columns(1) # Apply to 2nd Column

    data_table_5.format(formatter)

    opts     = { :width => 600, :allowHtml => true, :showRowNumber => true }
    @chart_5 = GoogleVisualr::Interactive::Table.new(data_table_5, opts)

  end

  # http://code.google.com/apis/chart/interactive/docs/roles.html
  def roles

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Month')
    data_table.new_column('number', 'Sales')
    # Columns with role definition
    data_table.new_column('number'  , nil, nil, 'interval')
    data_table.new_column('number'  , nil, nil, 'interval')
    data_table.new_column('string'  , nil, nil, 'annotation')
    data_table.new_column('string'  , nil, nil, 'annotationText')
    data_table.new_column('boolean' , nil, nil, 'certainty')

    data_table.add_rows([
      ['April', 1000, 900 , 1100, 'A', 'Stolen data'  , true],
      ['May'  , 1170, 1000, 1200, 'B', 'Coffee spill' , true],
      ['June' , 660 , 550 , 800 , 'C', 'Wampus attack', true],
      ['July' , 1030, nil , nil , nil, nil            , false]
    ])

    opts   = { :width => 600, :height => 400, :title => 'Sales', :legend => 'none' }
    @chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)

  end

end
