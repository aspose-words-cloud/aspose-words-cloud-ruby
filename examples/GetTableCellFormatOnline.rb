AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetTableCellFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2/rows/0', 0, nil, nil)
@words_api.get_table_cell_format_online(request)