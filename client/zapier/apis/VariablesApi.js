const samples = require('../samples/VariablesApi');
const VariableList = require('../models/VariableList');
const inline_object = require('../models/inline_object');
const inline_object_1 = require('../models/inline_object_1');
const inline_object_2 = require('../models/inline_object_2');
const inline_object_3 = require('../models/inline_object_3');
const inline_object_5 = require('../models/inline_object_5');
const utils = require('../utils/utils');

module.exports = {
    listVariables: {
        key: 'listVariables',
        noun: 'Variables',
        display: {
            label: 'List variables (fields) in a study',
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
            ],
            outputFields: [
                ...VariableList.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://edc.prod.imednetapi.com/api/v1/edc/studies/{studyKey}/variables'),
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
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'listVariables', response.json);
                    return results;
                })
            },
            sample: samples['VariableListSample']
        }
    },
}
