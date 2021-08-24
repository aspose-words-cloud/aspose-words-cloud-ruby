AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteCustomXmlPartsRequest.new(name: 'Sample.docx')
@words_api.delete_custom_xml_parts(delete_request)