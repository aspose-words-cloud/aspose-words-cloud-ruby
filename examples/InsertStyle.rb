AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_style_insert = StyleInsert.new({:StyleName => 'My Style', :StyleType => 'Paragraph'})
insert_request = InsertStyleRequest.new(name: 'Sample.docx', style_insert: request_style_insert)
@words_api.insert_style(insert_request)