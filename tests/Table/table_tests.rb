# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Table_tests.rb">
#   Copyright (c) 2020 Aspose.Words for Cloud
# </copyright>
# <summary>
#  Permission is hereby granted, free of charge, to any person obtaining a copy
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
# ------------------------------------------------------------------------------------
module AsposeWordsCloud
  require_relative '../base_test_context'

  #
  # Example of how to work wtih table.
  #
  class TableTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/Tables'
    end

    def local_file
      'DocumentElements/Tables/TablesGet.docx'
    end


    #
    # Test for getting tables.
    #
    def test_get_tables
      remote_file_name = 'TestGetTables.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTablesRequest.new(remote_file_name, '', remote_data_folder, nil, nil, nil)

      result = @words_api.get_tables(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting tables without node path.
    #
    def test_get_tables_without_node_path
      remote_file_name = 'TestGetTablesWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTablesRequest.new(remote_file_name, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_tables(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting table.
    #
    def test_get_table
      remote_file_name = 'TestGetTable.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTableRequest.new(remote_file_name, 1, '', remote_data_folder, nil, nil, nil)

      result = @words_api.get_table(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting table without node path.
    #
    def test_get_table_without_node_path
      remote_file_name = 'TestGetTableWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTableRequest.new(remote_file_name, 1, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_table(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting table.
    #
    def test_delete_table
      remote_file_name = 'TestDeleteTable.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteTableRequest.new(remote_file_name, 1, '', remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_table(request)
    end

    #
    # Test for deleting table without node path.
    #
    def test_delete_table_without_node_path
      remote_file_name = 'TestDeleteTableWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteTableRequest.new(remote_file_name, 1, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_table(request)
    end

    #
    # Test for adding table.
    #
    def test_insert_table
      remote_file_name = 'TestInsertTable.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_table = TableInsert.new({:ColumnsCount => 5, :RowsCount => 4})
      request = InsertTableRequest.new(remote_file_name, request_table, '', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_table(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding table without node path.
    #
    def test_insert_table_without_node_path
      remote_file_name = 'TestInsertTableWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_table = TableInsert.new({:ColumnsCount => 5, :RowsCount => 4})
      request = InsertTableRequest.new(remote_file_name, request_table, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_table(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting document properties.
    #
    def test_get_table_properties
      remote_file_name = 'TestGetTableProperties.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTablePropertiesRequest.new(remote_file_name, 1, '', remote_data_folder, nil, nil, nil)

      result = @words_api.get_table_properties(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting document properties without node path.
    #
    def test_get_table_properties_without_node_path
      remote_file_name = 'TestGetTablePropertiesWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTablePropertiesRequest.new(remote_file_name, 1, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_table_properties(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating table properties.
    #
    def test_update_table_properties
      remote_file_name = 'TestUpdateTableProperties.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_properties = TableProperties.new({:Alignment => 'Right', :AllowAutoFit => false, :Bidi => true, :BottomPadding => 1, :CellSpacing => 2, :StyleOptions => 'ColumnBands'})
      request = UpdateTablePropertiesRequest.new(remote_file_name, request_properties, 1, '', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_table_properties(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating table properties without node path.
    #
    def test_update_table_properties_without_node_path
      remote_file_name = 'TestUpdateTablePropertiesWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_properties = TableProperties.new({:Alignment => 'Right', :AllowAutoFit => false, :Bidi => true, :BottomPadding => 1, :CellSpacing => 2, :StyleOptions => 'ColumnBands'})
      request = UpdateTablePropertiesRequest.new(remote_file_name, request_properties, 1, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_table_properties(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting table row.
    #
    def test_get_table_row
      remote_file_name = 'TestGetTableRow.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTableRowRequest.new(remote_file_name, 'tables/1', 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_table_row(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting table row.
    #
    def test_delete_table_row
      remote_file_name = 'TestDeleteTableRow.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteTableRowRequest.new(remote_file_name, 'tables/1', 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_table_row(request)
    end

    #
    # Test for adding row.
    #
    def test_insert_table_row
      remote_file_name = 'TestInsertTableRow.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_row = TableRowInsert.new({:ColumnsCount => 5})
      request = InsertTableRowRequest.new(remote_file_name, request_row, 'sections/0/tables/2', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_table_row(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting row format.
    #
    def test_get_table_row_format
      remote_file_name = 'TestGetTableRowFormat.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTableRowFormatRequest.new(remote_file_name, 'sections/0/tables/2', 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_table_row_format(request)
      assert_equal false, result.nil?
    end

    #
    # Test updating row format.
    #
    def test_update_table_row_format
      remote_file_name = 'TestUpdateTableRowFormat.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_format = TableRowFormat.new({:AllowBreakAcrossPages => true, :HeadingFormat => true, :Height => 10, :HeightRule => 'Auto'})
      request = UpdateTableRowFormatRequest.new(remote_file_name, request_format, 'sections/0/tables/2', 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_table_row_format(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting table cell.
    #
    def test_get_table_cell
      remote_file_name = 'TestGetTableCell.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTableCellRequest.new(remote_file_name, 'sections/0/tables/2/rows/0', 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_table_cell(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting cell.
    #
    def test_delete_table_cell
      remote_file_name = 'TestDeleteTableCell.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteTableCellRequest.new(remote_file_name, 'sections/0/tables/2/rows/0', 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_table_cell(request)
    end

    #
    # Test for adding cell.
    #
    def test_insert_table_cell
      remote_file_name = 'TestInsertTableCell.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_cell = TableCellInsert.new({})
      request = InsertTableCellRequest.new(remote_file_name, request_cell, 'sections/0/tables/2/rows/0', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_table_cell(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting cell format.
    #
    def test_get_table_cell_format
      remote_file_name = 'TestGetTableCellFormat.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetTableCellFormatRequest.new(remote_file_name, 'sections/0/tables/2/rows/0', 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_table_cell_format(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating cell format.
    #
    def test_update_table_cell_format
      remote_file_name = 'TestUpdateTableCellFormat.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_format = TableCellFormat.new({:BottomPadding => 5, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})
      request = UpdateTableCellFormatRequest.new(remote_file_name, request_format, 'sections/0/tables/2/rows/0', 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_table_cell_format(request)
      assert_equal false, result.nil?
    end

    #
    # Test for table rendering.
    #
    def test_render_table
      remote_file_name = 'TestRenderTable.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = RenderTableRequest.new(remote_file_name, 'png', 0, '', remote_data_folder, nil, nil, nil, nil)

      result = @words_api.render_table(request)
      assert_equal false, result.nil?
    end

    #
    # Test for table rendering without node path.
    #
    def test_render_table_without_node_path
      remote_file_name = 'TestRenderTableWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = RenderTableRequest.new(remote_file_name, 'png', 0, nil, remote_data_folder, nil, nil, nil, nil)

      result = @words_api.render_table(request)
      assert_equal false, result.nil?
    end
  end
end
