AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_format = TableRowFormat.new({:AllowBreakAcrossPages => true, :HeadingFormat => true, :Height => 10.0, :HeightRule => 'Exactly'})
update_request = UpdateTableRowFormatRequest.new(name: 'Sample.docx', table_path: 'sections/0/tables/2', index: 0, format: request_format)
@words_api.update_table_row_format(update_request)