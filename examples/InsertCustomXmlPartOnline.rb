AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_custom_xml_part = CustomXmlPartInsert.new({:Id => 'hello', :Data => '<data>Hello world</data>'})
insert_request = InsertCustomXmlPartOnlineRequest.new(document: request_document, custom_xml_part: request_custom_xml_part)
@words_api.insert_custom_xml_part_online(insert_request)