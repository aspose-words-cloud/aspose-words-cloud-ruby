# Aspose.Words Cloud SDK for Ruby  
This repository contains Aspose.Words Cloud SDK for Ruby source code. This SDK allows you to work with Aspose.Words Cloud REST APIs in your Ruby applications quickly and easily, with zero initial cost.

[Aspose.Words Cloud](https://products.aspose.cloud/words/family "Aspose.Words for Cloud")  
[API Reference](https://apireference.aspose.cloud/words/)  

## Key Features
* Conversion between various document-related formats (20+ formats supported), including PDF<->Word conversion
* Mail merge and reports generation 
* Splitting Word documents
* Accessing Word document metadata and statistics
* Find and replace
* Watermarks and protection
* Full read & write access to Document Object Model, including sections, paragraphs, text, images, tables, headers/footers and many others

## Enhancements in Version 21.7

- ImlRenderingMode option introduced witch is used to determine how ink (InkML) objects are rendered
- MaxCharactersPerLine option introduced which is used to specify the maximum number of characters per one line


## Enhancements in Version 21.6

- Implemented beta version of CompareDocumentOnline feature with both document sending in request
- CompareDocument method now can handle PDF files
- AcceptAllRevisionsBeforeComparison option introduced which is used to specify if accept all revisions before comparison


## Enhancements in Version 21.5

- Update dependencies in sdk


## Enhancements in Version 21.4

- Removed obsolete pdf save option 'EscapeUri'
- SaveOptions now contains CustomTimeZoneInfo to set custom timezone when SdtType.Date structured document tag updated from custom XML
- Url of child requests in batch can be full now (earlier it can be only relative)
- Added 'RquestId' header to all responses


## Enhancements in Version 21.3

- Added 'UpdateCreatedTimeProperty' save option
- Added Tables into HeaderFooter so it's possible to address paragraphs inside table which is located in headerfooter (sections/0/headersfooters/1/tables/0/rows/0/cells/0/paragraphs/0)


## Enhancements in Version 21.2

- Added delete all comments method


## Enhancements in Version 21.1

- Added online version for all API methods


## Enhancements in Version 20.11

- In configuration json file appSid / appKey has been replaced to clientId / clientSecret.
- In Words API initialization methods clientId parameter precedes clientSecret parameter.


## Enhancements in Version 20.10

- Internal API changes.


## Enhancements in Version 20.9

- Added Batch API feature


## Enhancements in Version 20.8

- Added new api method (PUT '/words/{name}/compatibility/optimize') which is allows to optimize the document contents as well as default Aspose.Words behavior to a particular versions of MS Word
- Added 'ApplyBaseDocumentHeadersAndFootersToAppendingDocuments' option to 'DocumentEntryList' for AppendDocument API
- WithoutNodePath methods have been removed, pass null values instead


## Enhancements in Version 20.7

- Added 'Markdown' save format
- Added endpoint to update paragraph format without node path (PUT '/words/{name}/paragraphs/{index}/format')


## Enhancements in Version 20.6

- Added new methods:
  - DeleteAllParagraphTabStopsWithoutNodePath
  - DeleteParagraphTabStopWithoutNodePath
  - GetParagraphTabStopsWithoutNodePath
  - InsertOrUpdateParagraphTabStopWithoutNodePath
  - InsertParagraphWithoutNodePath
  - UpdateParagraphFormatWithoutNodePath
  - UpdateParagraphListFormatWithoutNodePath
  - DeleteParagraphListFormatWithoutNodePath
- DrawingObject related methods have been changed body content. Special request classes are introduced instead of strings.
- InsertOrUpdateParagraphTabStop, DeleteParagraphTabStop methods have been changed parameter order
- OoxmlSaveOptionsData.CompressionLevel property has been added


## Enhancements in Version 20.5

- Added methods to work with Word document lists
  - GetLists
  - GetList
  - InsertList
  - UpdateList
  - UpdateListLevel
- Added methods to work with styles
  - GetStyles
  - UpdateStyle
  - InsertStyle
  - CopyStyle
  - GetStyleFromDocumentElement
  - ApplyStyleToDocumentElement
- Added methods to work with paragraph list format
  - GetParagraphListFormat
  - GetParagraphListFormatWithoutNodePath
  - UpdateParagraphListFormat
  - DeleteParagraphListFormat
- Added methods to work with paragraph tab stops
  - GetParagraphTabStops
  - InsertOrUpdateParagraphTabStop
  - DeleteAllParagraphTabStops
  - DeleteParagraphTabStop
- Added methods to build reports
  - BuildReport
  - BuildReportOnline
- Added Shading property to ParagraphFormat


## How to use the SDK?
The complete source code is available in this repository folder. You can either directly use it in your project via source code or get [RubyGem](https://rubygems.org/gems/aspose_words_cloud) (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/display/wordscloud/Available+SDKs).

### Prerequisites

To use Aspose Words for Cloud Ruby SDK you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

### Installation
To install this package do the following:
update your Gemfile
```ruby
gem 'aspose_words_cloud', '~> 21.7'
```
or install directly
```bash
gem install aspose_words_cloud
```

### Sample usage
```ruby
    # Start README example
    AsposeWordsCloud.configure do |config|
            config.client_data['ClientId'] = clientId
            config.client_data['ClientSecret'] = clientSecret
            config.host = host
    request = DeleteWatermarkRequest.new remote_name, remote_test_folder + test_folder
    result = @words_api.delete_watermark request
    # End README example
```

[Tests](tests/) contain various examples of using the SDK.

## Dependencies
- Ruby 2.3 or later
- referenced packages (see [here](Gemfile) for more details)

## Licensing

All Aspose.Words Cloud SDKs, helper scripts and templates are licensed under [MIT License](https://github.com/aspose-words-cloud/aspose-words-cloud-ruby/blob/master/LICENSE). 

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.aspose.cloud/c/words).

## Resources

[Website](https://www.aspose.cloud/)  
[Product Home](https://products.aspose.cloud/words/family)  
[API Reference](https://apireference.aspose.cloud/words/)  
[Documentation](https://docs.aspose.cloud/display/wordscloud/Home)  
[Blog](https://blog.aspose.cloud/category/words/)  

## Other languages
We generate our SDKs in different languages so you may check if yours is available in our [list](https://github.com/aspose-words-cloud).

If you don't find your language in the list, feel free to request it from us, or use raw REST API requests as you can find it [here](https://products.aspose.cloud/words/curl).
