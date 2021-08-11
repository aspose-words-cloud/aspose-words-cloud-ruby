AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_format = TableCellFormat.new({:BottomPadding => 5, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})
update_request = UpdateTableCellFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2/rows/0', request_format, 0, nil, nil, nil, nil, nil)
@words_api.update_table_cell_format_online(update_request)