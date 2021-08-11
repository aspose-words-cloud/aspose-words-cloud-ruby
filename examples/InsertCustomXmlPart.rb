AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_custom_xml_part = CustomXmlPartInsert.new({:Id => 'hello', :Data => '<data>Hello world</data>'})
insert_request = InsertCustomXmlPartRequest.new('Sample.docx', request_custom_xml_part, nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_custom_xml_part(insert_request)