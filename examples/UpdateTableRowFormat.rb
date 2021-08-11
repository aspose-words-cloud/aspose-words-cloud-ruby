AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_format = TableRowFormat.new({:AllowBreakAcrossPages => true, :HeadingFormat => true, :Height => 10.0, :HeightRule => 'Exactly'})
update_request = UpdateTableRowFormatRequest.new('Sample.docx', 'sections/0/tables/2', 0, request_format, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_table_row_format(update_request)