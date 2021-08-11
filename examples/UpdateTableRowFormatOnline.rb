AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_format = TableRowFormat.new({:AllowBreakAcrossPages => true, :HeadingFormat => true, :Height => 10, :HeightRule => 'Auto'})
update_request = UpdateTableRowFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2', request_format, 0, nil, nil, nil, nil, nil)
@words_api.update_table_row_format_online(update_request)