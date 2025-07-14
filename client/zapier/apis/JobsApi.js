const samples = require('../samples/JobsApi');
const Job = require('../models/Job');
const inline_object = require('../models/inline_object');
const inline_object_1 = require('../models/inline_object_1');
const inline_object_2 = require('../models/inline_object_2');
const inline_object_3 = require('../models/inline_object_3');
const inline_object_5 = require('../models/inline_object_5');
const utils = require('../utils/utils');

module.exports = {
    getJobStatus: {
        key: 'getJobStatus',
        noun: 'Jobs',
        display: {
            label: 'Retrieve job status by batch ID',
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
                    key: 'batchId',
                    label: 'Batch ID of the job to retrieve',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...Job.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://edc.prod.imednetapi.com/api/v1/edc/studies/{studyKey}/jobs/{batchId}'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getJobStatus', response.json);
                    return results;
                })
            },
            sample: samples['JobSample']
        }
    },
}
