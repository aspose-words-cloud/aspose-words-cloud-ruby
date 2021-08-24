AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_properties = TableProperties.new({:Alignment => 'Right', :AllowAutoFit => false, :Bidi => true, :BottomPadding => 1.0, :CellSpacing => 2.0, :StyleOptions => 'ColumnBands'})
update_request = UpdateTablePropertiesRequest.new(name: 'Sample.docx', index: 1, properties: request_properties)
@words_api.update_table_properties(update_request)