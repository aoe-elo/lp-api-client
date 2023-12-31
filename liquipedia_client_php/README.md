# LiquipediaApi

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/LiquipediaApi/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: ApiKeyAuth
$config = Liquipedia\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Liquipedia\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new Liquipedia\Client\Api\V3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wiki = 'wiki_example'; // string | The wikis you want data from. Pipe-separate multiple wikis for multiwiki requests.  **Example:** `dota2`, `dota2|counterstrike`
$conditions = 'conditions_example'; // string | The filters you want to apply to the request.  **Example:** `[[pagename::Some/Liquipedia/Page]] AND [[namespace::0]]`
$query = 'query_example'; // string | The datapoints you want to query.  **Example:** `pagename, pageid, namespace`
$limit = 56; // int | The amount of results you want.  **Example:** `20`
$offset = 56; // int | This can be used for pagination.  **Example:** `20`
$order = 'order_example'; // string | The order you want your result in.  **Example:** `pagename ASC`
$groupby = 'groupby_example'; // string | What you want your results grouped by (this can be helpful when using aggregate functions).  **Example:** `pagename ASC`

try {
    $result = $apiInstance->broadcastersGet($wiki, $conditions, $query, $limit, $offset, $order, $groupby);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling V3Api->broadcastersGet: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://api.liquipedia.net/api/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*V3Api* | [**broadcastersGet**](docs/Api/V3Api.md#broadcastersget) | **GET** /broadcasters | Get broadcasters
*V3Api* | [**companyGet**](docs/Api/V3Api.md#companyget) | **GET** /company | Get companies
*V3Api* | [**datapointGet**](docs/Api/V3Api.md#datapointget) | **GET** /datapoint | Get datapoints
*V3Api* | [**externalmedialinkGet**](docs/Api/V3Api.md#externalmedialinkget) | **GET** /externalmedialink | Get media links
*V3Api* | [**matchGet**](docs/Api/V3Api.md#matchget) | **GET** /match | Get matches
*V3Api* | [**placementGet**](docs/Api/V3Api.md#placementget) | **GET** /placement | Get placements
*V3Api* | [**playerGet**](docs/Api/V3Api.md#playerget) | **GET** /player | Get players
*V3Api* | [**seriesGet**](docs/Api/V3Api.md#seriesget) | **GET** /series | Get series
*V3Api* | [**squadplayerGet**](docs/Api/V3Api.md#squadplayerget) | **GET** /squadplayer | Get squadplayer
*V3Api* | [**standingsentryGet**](docs/Api/V3Api.md#standingsentryget) | **GET** /standingsentry | Get standing
*V3Api* | [**standingstableGet**](docs/Api/V3Api.md#standingstableget) | **GET** /standingstable | Get standing
*V3Api* | [**teamGet**](docs/Api/V3Api.md#teamget) | **GET** /team | Get teams
*V3Api* | [**teamtemplateGet**](docs/Api/V3Api.md#teamtemplateget) | **GET** /teamtemplate | Get a team template
*V3Api* | [**teamtemplatelistGet**](docs/Api/V3Api.md#teamtemplatelistget) | **GET** /teamtemplatelist | Get a list of team templates
*V3Api* | [**tournamentGet**](docs/Api/V3Api.md#tournamentget) | **GET** /tournament | Get tournaments
*V3Api* | [**transferGet**](docs/Api/V3Api.md#transferget) | **GET** /transfer | Get transfers

## Models

- [BroadcastersGet200Response](docs/Model/BroadcastersGet200Response.md)
- [Error](docs/Model/Error.md)
- [SuccessfulResponse](docs/Model/SuccessfulResponse.md)
- [SuccessfulResponseWithWarning](docs/Model/SuccessfulResponseWithWarning.md)

## Authorization

Authentication schemes defined for the API:
### ApiKeyAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `3.0.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
