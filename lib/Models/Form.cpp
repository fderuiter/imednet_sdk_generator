

#include "Form.h"

using namespace Tiny;

Form::Form()
{
	studyKey = std::string();
	formId = int(0);
	formKey = std::string();
	formName = std::string();
	formType = std::string();
	revision = int(0);
	embeddedLog = bool(false);
	enforceOwnership = bool(false);
	userAgreement = bool(false);
	subjectRecordReport = bool(false);
	unscheduledVisit = bool(false);
	otherForms = bool(false);
	eproForm = bool(false);
	allowCopy = bool(false);
	disabled = bool(false);
	dateCreated = std::string();
	dateModified = std::string();
}

Form::Form(std::string jsonString)
{
	this->fromJson(jsonString);
}

Form::~Form()
{

}

void
Form::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


    }

    const char *formIdKey = "formId";

    if(object.has_key(formIdKey))
    {
        bourne::json value = object[formIdKey];



        jsonToValue(&formId, value, "int");


    }

    const char *formKeyKey = "formKey";

    if(object.has_key(formKeyKey))
    {
        bourne::json value = object[formKeyKey];



        jsonToValue(&formKey, value, "std::string");


    }

    const char *formNameKey = "formName";

    if(object.has_key(formNameKey))
    {
        bourne::json value = object[formNameKey];



        jsonToValue(&formName, value, "std::string");


    }

    const char *formTypeKey = "formType";

    if(object.has_key(formTypeKey))
    {
        bourne::json value = object[formTypeKey];



        jsonToValue(&formType, value, "std::string");


    }

    const char *revisionKey = "revision";

    if(object.has_key(revisionKey))
    {
        bourne::json value = object[revisionKey];



        jsonToValue(&revision, value, "int");


    }

    const char *embeddedLogKey = "embeddedLog";

    if(object.has_key(embeddedLogKey))
    {
        bourne::json value = object[embeddedLogKey];



        jsonToValue(&embeddedLog, value, "bool");


    }

    const char *enforceOwnershipKey = "enforceOwnership";

    if(object.has_key(enforceOwnershipKey))
    {
        bourne::json value = object[enforceOwnershipKey];



        jsonToValue(&enforceOwnership, value, "bool");


    }

    const char *userAgreementKey = "userAgreement";

    if(object.has_key(userAgreementKey))
    {
        bourne::json value = object[userAgreementKey];



        jsonToValue(&userAgreement, value, "bool");


    }

    const char *subjectRecordReportKey = "subjectRecordReport";

    if(object.has_key(subjectRecordReportKey))
    {
        bourne::json value = object[subjectRecordReportKey];



        jsonToValue(&subjectRecordReport, value, "bool");


    }

    const char *unscheduledVisitKey = "unscheduledVisit";

    if(object.has_key(unscheduledVisitKey))
    {
        bourne::json value = object[unscheduledVisitKey];



        jsonToValue(&unscheduledVisit, value, "bool");


    }

    const char *otherFormsKey = "otherForms";

    if(object.has_key(otherFormsKey))
    {
        bourne::json value = object[otherFormsKey];



        jsonToValue(&otherForms, value, "bool");


    }

    const char *eproFormKey = "eproForm";

    if(object.has_key(eproFormKey))
    {
        bourne::json value = object[eproFormKey];



        jsonToValue(&eproForm, value, "bool");


    }

    const char *allowCopyKey = "allowCopy";

    if(object.has_key(allowCopyKey))
    {
        bourne::json value = object[allowCopyKey];



        jsonToValue(&allowCopy, value, "bool");


    }

    const char *disabledKey = "disabled";

    if(object.has_key(disabledKey))
    {
        bourne::json value = object[disabledKey];



        jsonToValue(&disabled, value, "bool");


    }

    const char *dateCreatedKey = "dateCreated";

    if(object.has_key(dateCreatedKey))
    {
        bourne::json value = object[dateCreatedKey];



        jsonToValue(&dateCreated, value, "std::string");


    }

    const char *dateModifiedKey = "dateModified";

    if(object.has_key(dateModifiedKey))
    {
        bourne::json value = object[dateModifiedKey];



        jsonToValue(&dateModified, value, "std::string");


    }


}

bourne::json
Form::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["formId"] = getFormId();






    object["formKey"] = getFormKey();






    object["formName"] = getFormName();






    object["formType"] = getFormType();






    object["revision"] = getRevision();






    object["embeddedLog"] = isEmbeddedLog();






    object["enforceOwnership"] = isEnforceOwnership();






    object["userAgreement"] = isUserAgreement();






    object["subjectRecordReport"] = isSubjectRecordReport();






    object["unscheduledVisit"] = isUnscheduledVisit();






    object["otherForms"] = isOtherForms();






    object["eproForm"] = isEproForm();






    object["allowCopy"] = isAllowCopy();






    object["disabled"] = isDisabled();






    object["dateCreated"] = getDateCreated();






    object["dateModified"] = getDateModified();



    return object;

}

std::string
Form::getStudyKey()
{
	return studyKey;
}

void
Form::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
Form::getFormId()
{
	return formId;
}

void
Form::setFormId(int  formId)
{
	this->formId = formId;
}

std::string
Form::getFormKey()
{
	return formKey;
}

void
Form::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

std::string
Form::getFormName()
{
	return formName;
}

void
Form::setFormName(std::string  formName)
{
	this->formName = formName;
}

std::string
Form::getFormType()
{
	return formType;
}

void
Form::setFormType(std::string  formType)
{
	this->formType = formType;
}

int
Form::getRevision()
{
	return revision;
}

void
Form::setRevision(int  revision)
{
	this->revision = revision;
}

bool
Form::isEmbeddedLog()
{
	return embeddedLog;
}

void
Form::setEmbeddedLog(bool  embeddedLog)
{
	this->embeddedLog = embeddedLog;
}

bool
Form::isEnforceOwnership()
{
	return enforceOwnership;
}

void
Form::setEnforceOwnership(bool  enforceOwnership)
{
	this->enforceOwnership = enforceOwnership;
}

bool
Form::isUserAgreement()
{
	return userAgreement;
}

void
Form::setUserAgreement(bool  userAgreement)
{
	this->userAgreement = userAgreement;
}

bool
Form::isSubjectRecordReport()
{
	return subjectRecordReport;
}

void
Form::setSubjectRecordReport(bool  subjectRecordReport)
{
	this->subjectRecordReport = subjectRecordReport;
}

bool
Form::isUnscheduledVisit()
{
	return unscheduledVisit;
}

void
Form::setUnscheduledVisit(bool  unscheduledVisit)
{
	this->unscheduledVisit = unscheduledVisit;
}

bool
Form::isOtherForms()
{
	return otherForms;
}

void
Form::setOtherForms(bool  otherForms)
{
	this->otherForms = otherForms;
}

bool
Form::isEproForm()
{
	return eproForm;
}

void
Form::setEproForm(bool  eproForm)
{
	this->eproForm = eproForm;
}

bool
Form::isAllowCopy()
{
	return allowCopy;
}

void
Form::setAllowCopy(bool  allowCopy)
{
	this->allowCopy = allowCopy;
}

bool
Form::isDisabled()
{
	return disabled;
}

void
Form::setDisabled(bool  disabled)
{
	this->disabled = disabled;
}

std::string
Form::getDateCreated()
{
	return dateCreated;
}

void
Form::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Form::getDateModified()
{
	return dateModified;
}

void
Form::setDateModified(std::string  dateModified)
{
	this->dateModified = dateModified;
}



