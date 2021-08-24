AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_style_insert = StyleInsert.new({:StyleName => 'My Style', :StyleType => 'Paragraph'})
insert_request = InsertStyleOnlineRequest.new(document: request_document, style_insert: request_style_insert)
@words_api.insert_style_online(insert_request)