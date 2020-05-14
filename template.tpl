___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "LiveRamp Privacy Manager Consent State",
  "description": "Use with the LiveRamp Privacy Manager to signal the end-user\u0027s consent state per vendor to conditionally fire tags that are collecting personal data.",
  "categories": ["PERSONALIZATION", "TAG_MANAGEMENT", "UTILITY"],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const queryPermission = require('queryPermission');
const copyFromDataLayer = require('copyFromDataLayer');

if (queryPermission('read_data_layer', 'liverampGdprConsent')) {
  const data = copyFromDataLayer('liverampGdprConsent');
  log('GTM - Data: ', data);
  if (data) {
    log('GTM - Consent Data Exist');
    return data;
  }
} else {
  log('GTM - No Permission');
}

return '';


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "liverampGdprConsent"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 4/24/2020, 11:19:25 AM


