

#include "Coding.h"

using namespace Tiny;

Coding::Coding()
{
	studyKey = std::string();
	siteName = std::string();
	siteId = int(0);
	subjectId = int(0);
	subjectKey = std::string();
	formId = int(0);
	formName = std::string();
	formKey = std::string();
	revision = int(0);
	recordId = int(0);
	variable = std::string();
	value = std::string();
	codingId = int(0);
	code = std::string();
	codedBy = std::string();
	reason = std::string();
	dictionaryName = std::string();
	dictionaryVersion = std::string();
	dateCoded = std::string();
}

Coding::Coding(std::string jsonString)
{
	this->fromJson(jsonString);
}

Coding::~Coding()
{

}

void
Coding::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


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

    const char *subjectIdKey = "subjectId";

    if(object.has_key(subjectIdKey))
    {
        bourne::json value = object[subjectIdKey];



        jsonToValue(&subjectId, value, "int");


    }

    const char *subjectKeyKey = "subjectKey";

    if(object.has_key(subjectKeyKey))
    {
        bourne::json value = object[subjectKeyKey];



        jsonToValue(&subjectKey, value, "std::string");


    }

    const char *formIdKey = "formId";

    if(object.has_key(formIdKey))
    {
        bourne::json value = object[formIdKey];



        jsonToValue(&formId, value, "int");


    }

    const char *formNameKey = "formName";

    if(object.has_key(formNameKey))
    {
        bourne::json value = object[formNameKey];



        jsonToValue(&formName, value, "std::string");


    }

    const char *formKeyKey = "formKey";

    if(object.has_key(formKeyKey))
    {
        bourne::json value = object[formKeyKey];



        jsonToValue(&formKey, value, "std::string");


    }

    const char *revisionKey = "revision";

    if(object.has_key(revisionKey))
    {
        bourne::json value = object[revisionKey];



        jsonToValue(&revision, value, "int");


    }

    const char *recordIdKey = "recordId";

    if(object.has_key(recordIdKey))
    {
        bourne::json value = object[recordIdKey];



        jsonToValue(&recordId, value, "int");


    }

    const char *variableKey = "variable";

    if(object.has_key(variableKey))
    {
        bourne::json value = object[variableKey];



        jsonToValue(&variable, value, "std::string");


    }

    const char *valueKey = "value";

    if(object.has_key(valueKey))
    {
        bourne::json value = object[valueKey];



        jsonToValue(&value, value, "std::string");


    }

    const char *codingIdKey = "codingId";

    if(object.has_key(codingIdKey))
    {
        bourne::json value = object[codingIdKey];



        jsonToValue(&codingId, value, "int");


    }

    const char *codeKey = "code";

    if(object.has_key(codeKey))
    {
        bourne::json value = object[codeKey];



        jsonToValue(&code, value, "std::string");


    }

    const char *codedByKey = "codedBy";

    if(object.has_key(codedByKey))
    {
        bourne::json value = object[codedByKey];



        jsonToValue(&codedBy, value, "std::string");


    }

    const char *reasonKey = "reason";

    if(object.has_key(reasonKey))
    {
        bourne::json value = object[reasonKey];



        jsonToValue(&reason, value, "std::string");


    }

    const char *dictionaryNameKey = "dictionaryName";

    if(object.has_key(dictionaryNameKey))
    {
        bourne::json value = object[dictionaryNameKey];



        jsonToValue(&dictionaryName, value, "std::string");


    }

    const char *dictionaryVersionKey = "dictionaryVersion";

    if(object.has_key(dictionaryVersionKey))
    {
        bourne::json value = object[dictionaryVersionKey];



        jsonToValue(&dictionaryVersion, value, "std::string");


    }

    const char *dateCodedKey = "dateCoded";

    if(object.has_key(dateCodedKey))
    {
        bourne::json value = object[dateCodedKey];



        jsonToValue(&dateCoded, value, "std::string");


    }


}

bourne::json
Coding::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["siteName"] = getSiteName();






    object["siteId"] = getSiteId();






    object["subjectId"] = getSubjectId();






    object["subjectKey"] = getSubjectKey();






    object["formId"] = getFormId();






    object["formName"] = getFormName();






    object["formKey"] = getFormKey();






    object["revision"] = getRevision();






    object["recordId"] = getRecordId();






    object["variable"] = getVariable();






    object["value"] = getValue();






    object["codingId"] = getCodingId();






    object["code"] = getCode();






    object["codedBy"] = getCodedBy();






    object["reason"] = getReason();






    object["dictionaryName"] = getDictionaryName();






    object["dictionaryVersion"] = getDictionaryVersion();






    object["dateCoded"] = getDateCoded();



    return object;

}

std::string
Coding::getStudyKey()
{
	return studyKey;
}

void
Coding::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

std::string
Coding::getSiteName()
{
	return siteName;
}

void
Coding::setSiteName(std::string  siteName)
{
	this->siteName = siteName;
}

int
Coding::getSiteId()
{
	return siteId;
}

void
Coding::setSiteId(int  siteId)
{
	this->siteId = siteId;
}

int
Coding::getSubjectId()
{
	return subjectId;
}

void
Coding::setSubjectId(int  subjectId)
{
	this->subjectId = subjectId;
}

std::string
Coding::getSubjectKey()
{
	return subjectKey;
}

void
Coding::setSubjectKey(std::string  subjectKey)
{
	this->subjectKey = subjectKey;
}

int
Coding::getFormId()
{
	return formId;
}

void
Coding::setFormId(int  formId)
{
	this->formId = formId;
}

std::string
Coding::getFormName()
{
	return formName;
}

void
Coding::setFormName(std::string  formName)
{
	this->formName = formName;
}

std::string
Coding::getFormKey()
{
	return formKey;
}

void
Coding::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

int
Coding::getRevision()
{
	return revision;
}

void
Coding::setRevision(int  revision)
{
	this->revision = revision;
}

int
Coding::getRecordId()
{
	return recordId;
}

void
Coding::setRecordId(int  recordId)
{
	this->recordId = recordId;
}

std::string
Coding::getVariable()
{
	return variable;
}

void
Coding::setVariable(std::string  variable)
{
	this->variable = variable;
}

std::string
Coding::getValue()
{
	return value;
}

void
Coding::setValue(std::string  value)
{
	this->value = value;
}

int
Coding::getCodingId()
{
	return codingId;
}

void
Coding::setCodingId(int  codingId)
{
	this->codingId = codingId;
}

std::string
Coding::getCode()
{
	return code;
}

void
Coding::setCode(std::string  code)
{
	this->code = code;
}

std::string
Coding::getCodedBy()
{
	return codedBy;
}

void
Coding::setCodedBy(std::string  codedBy)
{
	this->codedBy = codedBy;
}

std::string
Coding::getReason()
{
	return reason;
}

void
Coding::setReason(std::string  reason)
{
	this->reason = reason;
}

std::string
Coding::getDictionaryName()
{
	return dictionaryName;
}

void
Coding::setDictionaryName(std::string  dictionaryName)
{
	this->dictionaryName = dictionaryName;
}

std::string
Coding::getDictionaryVersion()
{
	return dictionaryVersion;
}

void
Coding::setDictionaryVersion(std::string  dictionaryVersion)
{
	this->dictionaryVersion = dictionaryVersion;
}

std::string
Coding::getDateCoded()
{
	return dateCoded;
}

void
Coding::setDateCoded(std::string  dateCoded)
{
	this->dateCoded = dateCoded;
}



