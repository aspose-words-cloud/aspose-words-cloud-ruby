AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123', :TextInputFormat => 'UPPERCASE'})
insert_request = InsertFormFieldOnlineRequest.new(document: request_document, form_field: request_form_field, node_path: 'sections/0/paragraphs/0')
@words_api.insert_form_field_online(insert_request)