

#include "Components_schemas_RecordCreateRequest_item.h"

using namespace Tiny;

Components_schemas_RecordCreateRequest_item::Components_schemas_RecordCreateRequest_item()
{
	formKey = std::string();
	formId = int(0);
	siteName = std::string();
	siteId = int(0);
	subjectKey = std::string();
	subjectId = int(0);
	subjectOid = std::string();
	intervalName = std::string();
	intervalId = int(0);
	recordId = int(0);
	recordOid = std::string();
	data = null<AnyType>();
}

Components_schemas_RecordCreateRequest_item::Components_schemas_RecordCreateRequest_item(std::string jsonString)
{
	this->fromJson(jsonString);
}

Components_schemas_RecordCreateRequest_item::~Components_schemas_RecordCreateRequest_item()
{

}

void
Components_schemas_RecordCreateRequest_item::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *formKeyKey = "formKey";

    if(object.has_key(formKeyKey))
    {
        bourne::json value = object[formKeyKey];



        jsonToValue(&formKey, value, "std::string");


    }

    const char *formIdKey = "formId";

    if(object.has_key(formIdKey))
    {
        bourne::json value = object[formIdKey];



        jsonToValue(&formId, value, "int");


    }

    const char *siteNameKey = "siteName";

    if(object.has_key(siteNameKey))
    {
        bourne::json value = object[siteNameKey];



        jsonToValue(&siteName, value, "std::string");


    }

    const char *siteIdKey = "siteId";

    if(object.has_key(siteIdKey))
    {
        bourne::json value = object[siteIdKey];



        jsonToValue(&siteId, value, "int");


    }

    const char *subjectKeyKey = "subjectKey";

    if(object.has_key(subjectKeyKey))
    {
        bourne::json value = object[subjectKeyKey];



        jsonToValue(&subjectKey, value, "std::string");


    }

    const char *subjectIdKey = "subjectId";

    if(object.has_key(subjectIdKey))
    {
        bourne::json value = object[subjectIdKey];



        jsonToValue(&subjectId, value, "int");


    }

    const char *subjectOidKey = "subjectOid";

    if(object.has_key(subjectOidKey))
    {
        bourne::json value = object[subjectOidKey];



        jsonToValue(&subjectOid, value, "std::string");


    }

    const char *intervalNameKey = "intervalName";

    if(object.has_key(intervalNameKey))
    {
        bourne::json value = object[intervalNameKey];



        jsonToValue(&intervalName, value, "std::string");


    }

    const char *intervalIdKey = "intervalId";

    if(object.has_key(intervalIdKey))
    {
        bourne::json value = object[intervalIdKey];



        jsonToValue(&intervalId, value, "int");


    }

    const char *recordIdKey = "recordId";

    if(object.has_key(recordIdKey))
    {
        bourne::json value = object[recordIdKey];



        jsonToValue(&recordId, value, "int");


    }

    const char *recordOidKey = "recordOid";

    if(object.has_key(recordOidKey))
    {
        bourne::json value = object[recordOidKey];



        jsonToValue(&recordOid, value, "std::string");


    }

    const char *dataKey = "data";

    if(object.has_key(dataKey))
    {
        bourne::json value = object[dataKey];


    }


}

bourne::json
Components_schemas_RecordCreateRequest_item::toJson()
{
    bourne::json object = bourne::json::object();





    object["formKey"] = getFormKey();






    object["formId"] = getFormId();






    object["siteName"] = getSiteName();






    object["siteId"] = getSiteId();






    object["subjectKey"] = getSubjectKey();






    object["subjectId"] = getSubjectId();






    object["subjectOid"] = getSubjectOid();






    object["intervalName"] = getIntervalName();






    object["intervalId"] = getIntervalId();






    object["recordId"] = getRecordId();






    object["recordOid"] = getRecordOid();






    return object;

}

std::string
Components_schemas_RecordCreateRequest_item::getFormKey()
{
	return formKey;
}

void
Components_schemas_RecordCreateRequest_item::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

int
Components_schemas_RecordCreateRequest_item::getFormId()
{
	return formId;
}

void
Components_schemas_RecordCreateRequest_item::setFormId(int  formId)
{
	this->formId = formId;
}

std::string
Components_schemas_RecordCreateRequest_item::getSiteName()
{
	return siteName;
}

void
Components_schemas_RecordCreateRequest_item::setSiteName(std::string  siteName)
{
	this->siteName = siteName;
}

int
Components_schemas_RecordCreateRequest_item::getSiteId()
{
	return siteId;
}

void
Components_schemas_RecordCreateRequest_item::setSiteId(int  siteId)
{
	this->siteId = siteId;
}

std::string
Components_schemas_RecordCreateRequest_item::getSubjectKey()
{
	return subjectKey;
}

void
Components_schemas_RecordCreateRequest_item::setSubjectKey(std::string  subjectKey)
{
	this->subjectKey = subjectKey;
}

int
Components_schemas_RecordCreateRequest_item::getSubjectId()
{
	return subjectId;
}

void
Components_schemas_RecordCreateRequest_item::setSubjectId(int  subjectId)
{
	this->subjectId = subjectId;
}

std::string
Components_schemas_RecordCreateRequest_item::getSubjectOid()
{
	return subjectOid;
}

void
Components_schemas_RecordCreateRequest_item::setSubjectOid(std::string  subjectOid)
{
	this->subjectOid = subjectOid;
}

std::string
Components_schemas_RecordCreateRequest_item::getIntervalName()
{
	return intervalName;
}

void
Components_schemas_RecordCreateRequest_item::setIntervalName(std::string  intervalName)
{
	this->intervalName = intervalName;
}

int
Components_schemas_RecordCreateRequest_item::getIntervalId()
{
	return intervalId;
}

void
Components_schemas_RecordCreateRequest_item::setIntervalId(int  intervalId)
{
	this->intervalId = intervalId;
}

int
Components_schemas_RecordCreateRequest_item::getRecordId()
{
	return recordId;
}

void
Components_schemas_RecordCreateRequest_item::setRecordId(int  recordId)
{
	this->recordId = recordId;
}

std::string
Components_schemas_RecordCreateRequest_item::getRecordOid()
{
	return recordOid;
}

void
Components_schemas_RecordCreateRequest_item::setRecordOid(std::string  recordOid)
{
	this->recordOid = recordOid;
}

Map<string, string>
Components_schemas_RecordCreateRequest_item::getData()
{
	return data;
}

void
Components_schemas_RecordCreateRequest_item::setData(Map <string, string> data)
{
	this->data = data;
}



