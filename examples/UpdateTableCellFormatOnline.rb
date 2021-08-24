AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_format = TableCellFormat.new({:BottomPadding => 5, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})
update_request = UpdateTableCellFormatOnlineRequest.new(document: request_document, table_row_path: 'sections/0/tables/2/rows/0', format: request_format, index: 0)
@words_api.update_table_cell_format_online(update_request)