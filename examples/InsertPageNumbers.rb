AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_page_number = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of {NUMPAGES}'})
insert_request = InsertPageNumbersRequest.new(name: 'Sample.docx', page_number: request_page_number)
@words_api.insert_page_numbers(insert_request)