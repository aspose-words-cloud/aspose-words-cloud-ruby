AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Common/Sample.docx')
request_page_number = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of {NUMPAGES}'})
insert_request = InsertPageNumbersOnlineRequest.new(document: request_document, page_number: request_page_number)
@words_api.insert_page_numbers_online(insert_request)