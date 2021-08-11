AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123', :TextInputFormat => 'UPPERCASE'})
insert_request = InsertFormFieldOnlineRequest.new(File.open(File.join(documents_dir, '/FormFilled.docx')), request_form_field, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil, nil)
@words_api.insert_form_field_online(insert_request)