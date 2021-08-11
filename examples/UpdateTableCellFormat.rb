AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_format = TableCellFormat.new({:BottomPadding => 5.0, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})
update_request = UpdateTableCellFormatRequest.new('Sample.docx', 'sections/0/tables/2/rows/0', 0, request_format, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_table_cell_format(update_request)