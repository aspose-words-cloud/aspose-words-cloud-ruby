AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_template = File.open('Sample.docx')
request_report_engine_settings = ReportEngineSettings.new({:DataSourceType => 'Json', :DataSourceName => 'persons'})
build_report_request = BuildReportOnlineRequest.new(template: request_template, data: 'Data.json', report_engine_settings: request_report_engine_settings)
@words_api.build_report_online(build_report_request)