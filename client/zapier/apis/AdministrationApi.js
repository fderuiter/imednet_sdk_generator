const samples = require('../samples/AdministrationApi');
const UserList = require('../models/UserList');
const inline_object = require('../models/inline_object');
const inline_object_1 = require('../models/inline_object_1');
const inline_object_2 = require('../models/inline_object_2');
const inline_object_3 = require('../models/inline_object_3');
const inline_object_5 = require('../models/inline_object_5');
const utils = require('../utils/utils');

module.exports = {
    listUsers: {
        key: 'listUsers',
        noun: 'Administration',
        display: {
            label: 'List users and their roles in a study',
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
                    key: 'includeInactive',
                    label: 'For user listing, whether to include inactive users',
                    type: 'boolean',
                },
            ],
            outputFields: [
                ...UserList.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://edc.prod.imednetapi.com/api/v1/edc/studies/{studyKey}/users'),
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
                        'includeInactive': bundle.inputData?.['includeInactive'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'listUsers', response.json);
                    return results;
                })
            },
            sample: samples['UserListSample']
        }
    },
}
