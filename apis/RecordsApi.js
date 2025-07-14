const samples = require('../samples/RecordsApi');
const RecordJobStatus = require('../models/RecordJobStatus');
const RecordList = require('../models/RecordList');
const components_schemas_RecordCreateRequest_item = require('../models/components_schemas_RecordCreateRequest_item');
const inline_object = require('../models/inline_object');
const inline_object_1 = require('../models/inline_object_1');
const inline_object_2 = require('../models/inline_object_2');
const inline_object_3 = require('../models/inline_object_3');
const inline_object_4 = require('../models/inline_object_4');
const inline_object_5 = require('../models/inline_object_5');
const utils = require('../utils/utils');

module.exports = {
    createRecords: {
        key: 'createRecords',
        noun: 'Records',
        display: {
            label: 'Add new record or update subject/record data',
            description: '',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'studyKey',
                    label: 'Study key identifying the study context for the request',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'components_schemas_RecordCreateRequest_item',
                    label: 'An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).',
                    type: 'string',
                }
            ],
            outputFields: [
                ...RecordJobStatus.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://edc.prod.imednetapi.com/api/v1/edc/studies/{studyKey}/records'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...components_schemas_RecordCreateRequest_item.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'createRecords', response.json);
                    return results;
                })
            },
            sample: samples['RecordJobStatusSample']
        }
    },
    listRecords: {
        key: 'listRecords',
        noun: 'Records',
        display: {
            label: 'List records (eCRF instances) in a study',
            description: '',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'studyKey',
                    label: 'Study key identifying the study context for the request',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'page',
                    label: 'Page index to retrieve (0-based)',
                    type: 'integer',
                },
                {
                    key: 'size',
                    label: 'Number of items to return per page (max 500)',
                    type: 'integer',
                },
                {
                    key: 'sort',
                    label: 'Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.',
                    type: 'string',
                },
                {
                    key: 'filter',
                    label: 'Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).',
                    type: 'string',
                },
                {
                    key: 'recordDataFilter',
                    label: 'Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).',
                    type: 'string',
                },
            ],
            outputFields: [
                ...RecordList.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://edc.prod.imednetapi.com/api/v1/edc/studies/{studyKey}/records'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'page': bundle.inputData?.['page'],
                        'size': bundle.inputData?.['size'],
                        'sort': bundle.inputData?.['sort'],
                        'filter': bundle.inputData?.['filter'],
                        'recordDataFilter': bundle.inputData?.['recordDataFilter'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'listRecords', response.json);
                    return results;
                })
            },
            sample: samples['RecordListSample']
        }
    },
}
