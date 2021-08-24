AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_format = TableRowFormat.new({:AllowBreakAcrossPages => true, :HeadingFormat => true, :Height => 10, :HeightRule => 'Auto'})
update_request = UpdateTableRowFormatOnlineRequest.new(document: request_document, table_path: 'sections/0/tables/2', format: request_format, index: 0)
@words_api.update_table_row_format_online(update_request)