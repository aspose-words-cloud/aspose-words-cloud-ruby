AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_custom_xml_part = CustomXmlPartUpdate.new({:Data => '<data>Hello world</data>'})
update_request = UpdateCustomXmlPartOnlineRequest.new(document: request_document, custom_xml_part_index: 0, custom_xml_part: request_custom_xml_part)
@words_api.update_custom_xml_part_online(update_request)