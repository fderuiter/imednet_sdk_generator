export * from '../models/Coding';
export * from '../models/CodingList';
export * from '../models/ComponentsSchemasIntervalFormsItem';
export * from '../models/ComponentsSchemasMetadataError';
export * from '../models/ComponentsSchemasRecordCreateRequestItem';
export * from '../models/Form';
export * from '../models/FormList';
export * from '../models/InlineObject';
export * from '../models/InlineObject1';
export * from '../models/InlineObject2';
export * from '../models/InlineObject3';
export * from '../models/InlineObject4';
export * from '../models/InlineObject5';
export * from '../models/Interval';
export * from '../models/IntervalList';
export * from '../models/Job';
export * from '../models/Keyword';
export * from '../models/Metadata';
export * from '../models/Pagination';
export * from '../models/Query';
export * from '../models/QueryComment';
export * from '../models/QueryList';
export * from '../models/Record';
export * from '../models/RecordJobStatus';
export * from '../models/RecordList';
export * from '../models/RecordRevision';
export * from '../models/RecordRevisionList';
export * from '../models/Role';
export * from '../models/Site';
export * from '../models/SiteList';
export * from '../models/Sort';
export * from '../models/Study';
export * from '../models/StudyList';
export * from '../models/Subject';
export * from '../models/SubjectList';
export * from '../models/User';
export * from '../models/UserList';
export * from '../models/Variable';
export * from '../models/VariableList';
export * from '../models/Visit';
export * from '../models/VisitList';

import { Coding } from '../models/Coding';
import { CodingList } from '../models/CodingList';
import { ComponentsSchemasIntervalFormsItem } from '../models/ComponentsSchemasIntervalFormsItem';
import { ComponentsSchemasMetadataError } from '../models/ComponentsSchemasMetadataError';
import { ComponentsSchemasRecordCreateRequestItem } from '../models/ComponentsSchemasRecordCreateRequestItem';
import { Form } from '../models/Form';
import { FormList } from '../models/FormList';
import { InlineObject } from '../models/InlineObject';
import { InlineObject1 } from '../models/InlineObject1';
import { InlineObject2 } from '../models/InlineObject2';
import { InlineObject3 } from '../models/InlineObject3';
import { InlineObject4 } from '../models/InlineObject4';
import { InlineObject5 } from '../models/InlineObject5';
import { Interval } from '../models/Interval';
import { IntervalList } from '../models/IntervalList';
import { Job } from '../models/Job';
import { Keyword } from '../models/Keyword';
import { Metadata } from '../models/Metadata';
import { Pagination } from '../models/Pagination';
import { Query } from '../models/Query';
import { QueryComment } from '../models/QueryComment';
import { QueryList } from '../models/QueryList';
import { Record } from '../models/Record';
import { RecordJobStatus } from '../models/RecordJobStatus';
import { RecordList } from '../models/RecordList';
import { RecordRevision } from '../models/RecordRevision';
import { RecordRevisionList } from '../models/RecordRevisionList';
import { Role } from '../models/Role';
import { Site } from '../models/Site';
import { SiteList } from '../models/SiteList';
import { Sort , SortDirectionEnum   } from '../models/Sort';
import { Study } from '../models/Study';
import { StudyList } from '../models/StudyList';
import { Subject } from '../models/Subject';
import { SubjectList } from '../models/SubjectList';
import { User } from '../models/User';
import { UserList } from '../models/UserList';
import { Variable  , VariableVariableTypeEnum                } from '../models/Variable';
import { VariableList } from '../models/VariableList';
import { Visit } from '../models/Visit';
import { VisitList } from '../models/VisitList';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

let enumsMap: Set<string> = new Set<string>([
    "SortDirectionEnum",
    "VariableVariableTypeEnum",
]);

let typeMap: {[index: string]: any} = {
    "Coding": Coding,
    "CodingList": CodingList,
    "ComponentsSchemasIntervalFormsItem": ComponentsSchemasIntervalFormsItem,
    "ComponentsSchemasMetadataError": ComponentsSchemasMetadataError,
    "ComponentsSchemasRecordCreateRequestItem": ComponentsSchemasRecordCreateRequestItem,
    "Form": Form,
    "FormList": FormList,
    "InlineObject": InlineObject,
    "InlineObject1": InlineObject1,
    "InlineObject2": InlineObject2,
    "InlineObject3": InlineObject3,
    "InlineObject4": InlineObject4,
    "InlineObject5": InlineObject5,
    "Interval": Interval,
    "IntervalList": IntervalList,
    "Job": Job,
    "Keyword": Keyword,
    "Metadata": Metadata,
    "Pagination": Pagination,
    "Query": Query,
    "QueryComment": QueryComment,
    "QueryList": QueryList,
    "Record": Record,
    "RecordJobStatus": RecordJobStatus,
    "RecordList": RecordList,
    "RecordRevision": RecordRevision,
    "RecordRevisionList": RecordRevisionList,
    "Role": Role,
    "Site": Site,
    "SiteList": SiteList,
    "Sort": Sort,
    "Study": Study,
    "StudyList": StudyList,
    "Subject": Subject,
    "SubjectList": SubjectList,
    "User": User,
    "UserList": UserList,
    "Variable": Variable,
    "VariableList": VariableList,
    "Visit": Visit,
    "VisitList": VisitList,
}

type MimeTypeDescriptor = {
    type: string;
    subtype: string;
    subtypeTokens: string[];
};

/**
 * Every mime-type consists of a type, subtype, and optional parameters.
 * The subtype can be composite, including information about the content format.
 * For example: `application/json-patch+json`, `application/merge-patch+json`.
 *
 * This helper transforms a string mime-type into an internal representation.
 * This simplifies the implementation of predicates that in turn define common rules for parsing or stringifying
 * the payload.
 */
const parseMimeType = (mimeType: string): MimeTypeDescriptor => {
    const [type = '', subtype = ''] = mimeType.split('/');
    return {
        type,
        subtype,
        subtypeTokens: subtype.split('+'),
    };
};

type MimeTypePredicate = (mimeType: string) => boolean;

// This factory creates a predicate function that checks a string mime-type against defined rules.
const mimeTypePredicateFactory = (predicate: (descriptor: MimeTypeDescriptor) => boolean): MimeTypePredicate => (mimeType) => predicate(parseMimeType(mimeType));

// Use this factory when you need to define a simple predicate based only on type and, if applicable, subtype.
const mimeTypeSimplePredicateFactory = (type: string, subtype?: string): MimeTypePredicate => mimeTypePredicateFactory((descriptor) => {
    if (descriptor.type !== type) return false;
    if (subtype != null && descriptor.subtype !== subtype) return false;
    return true;
});

// Creating a set of named predicates that will help us determine how to handle different mime-types
const isTextLikeMimeType = mimeTypeSimplePredicateFactory('text');
const isJsonMimeType = mimeTypeSimplePredicateFactory('application', 'json');
const isJsonLikeMimeType = mimeTypePredicateFactory((descriptor) => descriptor.type === 'application' && descriptor.subtypeTokens.some((item) => item === 'json'));
const isOctetStreamMimeType = mimeTypeSimplePredicateFactory('application', 'octet-stream');
const isFormUrlencodedMimeType = mimeTypeSimplePredicateFactory('application', 'x-www-form-urlencoded');

// Defining a list of mime-types in the order of prioritization for handling.
const supportedMimeTypePredicatesWithPriority: MimeTypePredicate[] = [
    isJsonMimeType,
    isJsonLikeMimeType,
    isTextLikeMimeType,
    isOctetStreamMimeType,
    isFormUrlencodedMimeType,
];

const nullableSuffix = " | null";
const optionalSuffix = " | undefined";
const arrayPrefix = "Array<";
const arraySuffix = ">";
const mapPrefix = "{ [key: string]: ";
const mapSuffix = "; }";

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap.has(expectedType)) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    let mapping = typeMap[expectedType].mapping;
                    if (mapping != undefined && mapping[discriminatorType]) {
                        return mapping[discriminatorType]; // use the type given in the discriminator
                    } else if(typeMap[discriminatorType]) {
                        return discriminatorType;
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string, format: string): any {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.endsWith(nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.serialize(data, subType, format);
        } else if (type.endsWith(optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.serialize(data, subType, format);
        } else if (type.startsWith(arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let date of data) {
                transformedData.push(ObjectSerializer.serialize(date, subType, format));
            }
            return transformedData;
        } else if (type.startsWith(mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.serialize(
                    data[key],
                    subType,
                    format,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            if (format == "date") {
                let month = data.getMonth()+1
                month = month < 10 ? "0" + month.toString() : month.toString()
                let day = data.getDate();
                day = day < 10 ? "0" + day.toString() : day.toString();

                return data.getFullYear() + "-" + month + "-" + day;
            } else {
                return data.toISOString();
            }
        } else {
            if (enumsMap.has(type)) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let attributeType of attributeTypes) {
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type, attributeType.format);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string, format: string): any {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.endsWith(nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.deserialize(data, subType, format);
        } else if (type.endsWith(optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.deserialize(data, subType, format);
        } else if (type.startsWith(arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let date of data) {
                transformedData.push(ObjectSerializer.deserialize(date, subType, format));
            }
            return transformedData;
        } else if (type.startsWith(mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.deserialize(
                    data[key],
                    subType,
                    format,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap.has(type)) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let attributeType of attributeTypes) {
                let value = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type, attributeType.format);
                if (value !== undefined) {
                    instance[attributeType.name] = value;
                }
            }
            return instance;
        }
    }


    /**
     * Normalize media type
     *
     * We currently do not handle any media types attributes, i.e. anything
     * after a semicolon. All content is assumed to be UTF-8 compatible.
     */
    public static normalizeMediaType(mediaType: string | undefined): string | undefined {
        if (mediaType === undefined) {
            return undefined;
        }
        return (mediaType.split(";")[0] ?? '').trim().toLowerCase();
    }

    /**
     * From a list of possible media types, choose the one we can handle best.
     *
     * The order of the given media types does not have any impact on the choice
     * made.
     */
    public static getPreferredMediaType(mediaTypes: Array<string>): string {
        /** According to OAS 3 we should default to json */
        if (mediaTypes.length === 0) {
            return "application/json";
        }

        const normalMediaTypes = mediaTypes.map(ObjectSerializer.normalizeMediaType);

        for (const predicate of supportedMimeTypePredicatesWithPriority) {
            for (const mediaType of normalMediaTypes) {
                if (mediaType != null && predicate(mediaType)) {
                    return mediaType;
                }
            }
        }

        throw new Error("None of the given media types are supported: " + mediaTypes.join(", "));
    }

    /**
     * Convert data to a string according the given media type
     */
    public static stringify(data: any, mediaType: string): string {
        if (isTextLikeMimeType(mediaType)) {
            return String(data);
        }

        if (isJsonLikeMimeType(mediaType)) {
            return JSON.stringify(data);
        }

        throw new Error("The mediaType " + mediaType + " is not supported by ObjectSerializer.stringify.");
    }

    /**
     * Parse data from a string according to the given media type
     */
    public static parse(rawData: string, mediaType: string | undefined) {
        if (mediaType === undefined) {
            throw new Error("Cannot parse content. No Content-Type defined.");
        }

        if (isTextLikeMimeType(mediaType)) {
            return rawData;
        }

        if (isJsonLikeMimeType(mediaType)) {
            return JSON.parse(rawData);
        }

        throw new Error("The mediaType " + mediaType + " is not supported by ObjectSerializer.parse.");
    }
}
