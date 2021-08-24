AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_format = TableCellFormat.new({:BottomPadding => 5.0, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})
update_request = UpdateTableCellFormatRequest.new(name: 'Sample.docx', table_row_path: 'sections/0/tables/2/rows/0', index: 0, format: request_format)
@words_api.update_table_cell_format(update_request)