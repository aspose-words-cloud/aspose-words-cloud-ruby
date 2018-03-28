#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="tables_tests.rb">
#   Copyright (c) 2018 Aspose.Words for Cloud
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# --------------------------------------------------------------------------------------------------------------------
#
module RubySDK
  require_relative '../base_test_context'
  require_relative '../../lib/models/requests/DeleteTableRequest'
  require_relative '../../lib/models/requests/DeleteTableCellRequest'
  require_relative '../../lib/models/requests/DeleteTableRowRequest'
  require_relative '../../lib/models/requests/GetBorderRequest'
  require_relative '../../lib/models/requests/GetBordersRequest'
  require_relative '../../lib/models/requests/GetTableRequest'
  require_relative '../../lib/models/requests/GetTableCellRequest'
  require_relative '../../lib/models/requests/GetTableCellFormatRequest'
  require_relative '../../lib/models/requests/GetTableRowRequest'
  require_relative '../../lib/models/requests/GetTableRowFormatRequest'
  require_relative '../../lib/models/requests/GetTablesRequest'
  require_relative '../../lib/models/requests/InsertTableRequest'
  require_relative '../../lib/models/requests/InsertTableCellRequest'
  require_relative '../../lib/models/requests/InsertTableRowRequest'
  require_relative '../../lib/models/requests/RenderTableRequest'
  require_relative '../../lib/models/requests/UpdateTableCellFormatRequest'
  require_relative '../../lib/models/requests/GetTablePropertiesRequest'
  require_relative '../../lib/models/requests/UpdateTablePropertiesRequest'
  require_relative '../../lib/models/requests/UpdateTableRowFormatRequest'
  require_relative '../../lib/models/requests/DeleteBorderRequest'
  require_relative '../../lib/models/requests/DeleteBordersRequest'
  require_relative '../../lib/models/requests/UpdateBorderRequest'
  class TablesTests < BaseTestContext
    def test_folder
      'DocumentElements/Tables'
    end

    #
    # Test for removing table
    #
    def test_delete_table
      filename = 'TablesGet.docx'
      remote_name = 'TestDeleteTable.docx'
      index = 1

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = DeleteTableRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_table request
      assert_equal 200, result.code
    end

    #
    # Test for removing table cell
    #
    def test_delete_table_cell
      filename = 'TablesGet.docx'
      remote_name = 'TestDeleteTableCell.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = DeleteTableCellRequest.new remote_name, 'sections/0/tables/2/rows/0', index, remote_test_folder + test_folder
      result = @words_api.delete_table_cell request
      assert_equal 200, result.code
    end

    #
    # Test for removing table row
    #
    def test_delete_table_row
      filename = 'TablesGet.docx'
      remote_name = 'TestDeleteTableRow.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = DeleteTableRowRequest.new remote_name, 'tables/1', index, remote_test_folder + test_folder
      result = @words_api.delete_table_row request
      assert_equal 200, result.code
    end

    #
    # Test for getting table border
    #
    def test_get_border
      filename = 'TablesGet.docx'
      remote_name = 'TestGetBorder.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetBorderRequest.new remote_name, 'sections/0/tables/2/rows/0', index, remote_test_folder + test_folder
      result = @words_api.get_border request
      assert_equal 200, result.code
    end

    #
    # Test for getting table borders
    #
    def test_get_borders
      filename = 'TablesGet.docx'
      remote_name = 'TestGetBorders.docx'

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetBordersRequest.new remote_name, 'sections/0/tables/2/rows/0', remote_test_folder + test_folder
      result = @words_api.get_borders request
      assert_equal 200, result.code
    end

    #
    # Test for getting table
    #
    def test_get_table
      filename = 'TablesGet.docx'
      remote_name = 'TestGetTable.docx'
      index = 1

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetTableRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_table request
      assert_equal 200, result.code
    end

    #
    # Test for getting table cell
    #
    def test_get_table_cell
      filename = 'TablesGet.docx'
      remote_name = 'TestGetTableCell.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetTableCellRequest.new remote_name, 'sections/0/tables/2/rows/0', index, remote_test_folder + test_folder
      result = @words_api.get_table_cell request
      assert_equal 200, result.code
    end

    #
    # Test for getting table cell format
    #
    def test_get_table_cell_format
      filename = 'TablesGet.docx'
      remote_name = 'TestGetTableCellFormat.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetTableCellFormatRequest.new remote_name, 'sections/0/tables/2/rows/0', index, remote_test_folder + test_folder
      result = @words_api.get_table_cell_format request
      assert_equal 200, result.code
    end

    #
    # Test for getting table row
    #
    def test_get_table_row
      filename = 'TablesGet.docx'
      remote_name = 'TestGetTableRow.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetTableRowRequest.new remote_name, 'tables/1', index, remote_test_folder + test_folder
      result = @words_api.get_table_row request
      assert_equal 200, result.code
    end

    #
    # Test for getting table row format
    #
    def test_get_table_row_format
      filename = 'TablesGet.docx'
      remote_name = 'TestGetTableRowFormat.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetTableRowFormatRequest.new remote_name, 'sections/0/tables/2', index, remote_test_folder + test_folder
      result = @words_api.get_table_row_format request
      assert_equal 200, result.code
    end

    #
    # Test for getting tables
    #
    def test_get_tables
      filename = 'TablesGet.docx'
      remote_name = 'TestGetTables.docx'

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetTablesRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_tables request
      assert_equal 200, result.code
    end

    #
    # Test for inserting table
    #
    def test_insert_table
      filename = 'TablesGet.docx'
      remote_name = 'TestInsertTable.docx'
      table_dto = TableInsert.new({:ColumnsCount => 3, :RowsCount => 5})

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = InsertTableRequest.new remote_name, remote_test_folder + test_folder, nil,nil,
                                       nil,nil,nil,nil, table_dto
      result = @words_api.insert_table request
      assert_equal 200, result.code
    end

    #
    # Test for inserting table cell
    #
    def test_insert_table_cell
      filename = 'TablesGet.docx'
      remote_name = 'TestInsertTableCell.docx'
      cell = TableCellInsert.new

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = InsertTableCellRequest.new remote_name, 'sections/0/tables/2/rows/0', remote_test_folder + test_folder,
                                           nil,nil, nil,nil,
                                           nil,nil, cell
      result = @words_api.insert_table_cell request
      assert_equal 200, result.code
    end

    #
    # Test for inserting table row
    #
    def test_insert_table_row
      filename = 'TablesGet.docx'
      remote_name = 'TestInsertTableRow.docx'
      row = TableRowInsert.new({:ColumnsCount => 5})

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = InsertTableRowRequest.new remote_name, 'sections/0/tables/2', remote_test_folder + test_folder,nil,
                                          nil,nil,nil,nil,nil,
                                          row
      result = @words_api.insert_table_row request
      assert_equal 200, result.code
    end

    #
    # Test for rendering table
    #
    def test_render_table
      filename = 'TablesGet.docx'
      remote_name = 'TestRenderTable.docx'
      index = 0
      format = 'png'

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = RenderTableRequest.new remote_name, format, index, remote_test_folder + test_folder
      result = @words_api.render_table request
      assert result.length > 0, 'Error occurred while rendering'
    end

    #
    # Test for updating table cell format
    #
    def test_update_table_cell_format
      filename = 'TablesGet.docx'
      remote_name = 'TestUpdateTableCellFormat.docx'
      index = 0
      format = TableCellFormat.new({:BottomPadding => 5, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = UpdateTableCellFormatRequest.new remote_name, 'sections/0/tables/2/rows/0', index, remote_test_folder + test_folder, nil,
                                                 nil,nil,nil,nil,nil,
                                                 format
      result = @words_api.update_table_cell_format request
      assert_equal 200, result.code
    end

    #
    # Test for getting table properties
    #
    def test_get_table_properties
      filename = 'TablesGet.docx'
      remote_name = 'TestGetTableProperties.docx'
      index = 1

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetTablePropertiesRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_table_properties request
      assert_equal 200, result.code
    end

    #
    # Test for updating table properties
    #
    def test_update_table_properties
      filename = 'TablesGet.docx'
      remote_name = 'TestUpdateTableProperties.docx'
      index = 1
      props = TableProperties.new({:Alignment => 'Right', :AllowAutoFit => false, :Bidi => true, :BottomPadding => 1,
                                  :CellSpacing => 2, :LeftIndent => 3, :LeftPadding => 4, :RightPadding => 5,
                                   :StyleOptions => 'ColumnBands', :TopPadding => 6})

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = UpdateTablePropertiesRequest.new remote_name, index, remote_test_folder + test_folder, :properties => props
      result = @words_api.update_table_properties request
      assert_equal 200, result.code
    end

    #
    # Test for updating table row format
    #
    def test_update_table_row_format
      filename = 'TablesGet.docx'
      remote_name = 'TestUpdateTableRowFormat.docx'
      index = 0
      format = TableRowFormat.new({:AllowBreakAcrossPAges => true, :HeadingFormat => true, :Height => 10, :HeightRule => 'Auto'})

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = UpdateTableRowFormatRequest.new remote_name, 'sections/0/tables/2', index, remote_test_folder + test_folder, :format => format
      result = @words_api.update_table_row_format request
      assert_equal 200, result.code
    end

    #
    # Test for removing border
    #
    def test_delete_border
      filename = 'TablesGet.docx'
      remote_name = 'TestDeleteTableBorder.docx'
      dest_name = remote_test_out + remote_name
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = DeleteBorderRequest.new remote_name, 'tables/1/rows/0/cells/0/', index, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.delete_border request
      assert_equal 200, result.code
    end

    #
    # Test for removing borders
    #
    def test_delete_borders
      filename = 'TablesGet.docx'
      remote_name = 'TestDeleteTableBorders.docx'

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = DeleteBordersRequest.new remote_name, 'tables/1/rows/0/cells/0/', remote_test_folder + test_folder
      result = @words_api.delete_borders request
      assert_equal 200, result.code
    end

    #
    # Test for updating borders
    #
    def test_update_border
      filename = 'TablesGet.docx'
      remote_name = 'TestUpdateBorder.docx'
      index = 0
      border = Border.new({:BorderType => 'Left', :Color => XmlColor.new({:Alpha => 2}),
                          :DistanceFromText => 6, :LineStyle => 'DashDotStroker',
                          :LineWith => 2, :Shadow => true})

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = UpdateBorderRequest.new remote_name, border, 'tables/1/rows/0/cells/0/', index, remote_test_folder + test_folder
      result = @words_api.update_border request
      assert_equal 200, result.code
    end
  end
end
