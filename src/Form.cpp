#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Form.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Form::Form()
{
	//__init();
}

Form::~Form()
{
	//__cleanup();
}

void
Form::__init()
{
	//studyKey = std::string();
	//formId = int(0);
	//formKey = std::string();
	//formName = std::string();
	//formType = std::string();
	//revision = int(0);
	//embeddedLog = bool(false);
	//enforceOwnership = bool(false);
	//userAgreement = bool(false);
	//subjectRecordReport = bool(false);
	//unscheduledVisit = bool(false);
	//otherForms = bool(false);
	//eproForm = bool(false);
	//allowCopy = bool(false);
	//disabled = bool(false);
	//dateCreated = std::string();
	//dateModified = std::string();
}

void
Form::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
	//}
	//if(formId != NULL) {
	//
	//delete formId;
	//formId = NULL;
	//}
	//if(formKey != NULL) {
	//
	//delete formKey;
	//formKey = NULL;
	//}
	//if(formName != NULL) {
	//
	//delete formName;
	//formName = NULL;
	//}
	//if(formType != NULL) {
	//
	//delete formType;
	//formType = NULL;
	//}
	//if(revision != NULL) {
	//
	//delete revision;
	//revision = NULL;
	//}
	//if(embeddedLog != NULL) {
	//
	//delete embeddedLog;
	//embeddedLog = NULL;
	//}
	//if(enforceOwnership != NULL) {
	//
	//delete enforceOwnership;
	//enforceOwnership = NULL;
	//}
	//if(userAgreement != NULL) {
	//
	//delete userAgreement;
	//userAgreement = NULL;
	//}
	//if(subjectRecordReport != NULL) {
	//
	//delete subjectRecordReport;
	//subjectRecordReport = NULL;
	//}
	//if(unscheduledVisit != NULL) {
	//
	//delete unscheduledVisit;
	//unscheduledVisit = NULL;
	//}
	//if(otherForms != NULL) {
	//
	//delete otherForms;
	//otherForms = NULL;
	//}
	//if(eproForm != NULL) {
	//
	//delete eproForm;
	//eproForm = NULL;
	//}
	//if(allowCopy != NULL) {
	//
	//delete allowCopy;
	//allowCopy = NULL;
	//}
	//if(disabled != NULL) {
	//
	//delete disabled;
	//disabled = NULL;
	//}
	//if(dateCreated != NULL) {
	//
	//delete dateCreated;
	//dateCreated = NULL;
	//}
	//if(dateModified != NULL) {
	//
	//delete dateModified;
	//dateModified = NULL;
	//}
	//
}

void
Form::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *studyKeyKey = "studyKey";
	node = json_object_get_member(pJsonObject, studyKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&studyKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *formIdKey = "formId";
	node = json_object_get_member(pJsonObject, formIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&formId, node, "int", "");
		} else {
			
		}
	}
	const gchar *formKeyKey = "formKey";
	node = json_object_get_member(pJsonObject, formKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&formKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *formNameKey = "formName";
	node = json_object_get_member(pJsonObject, formNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&formName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *formTypeKey = "formType";
	node = json_object_get_member(pJsonObject, formTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&formType, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *revisionKey = "revision";
	node = json_object_get_member(pJsonObject, revisionKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&revision, node, "int", "");
		} else {
			
		}
	}
	const gchar *embeddedLogKey = "embeddedLog";
	node = json_object_get_member(pJsonObject, embeddedLogKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&embeddedLog, node, "bool", "");
		} else {
			
		}
	}
	const gchar *enforceOwnershipKey = "enforceOwnership";
	node = json_object_get_member(pJsonObject, enforceOwnershipKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&enforceOwnership, node, "bool", "");
		} else {
			
		}
	}
	const gchar *userAgreementKey = "userAgreement";
	node = json_object_get_member(pJsonObject, userAgreementKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&userAgreement, node, "bool", "");
		} else {
			
		}
	}
	const gchar *subjectRecordReportKey = "subjectRecordReport";
	node = json_object_get_member(pJsonObject, subjectRecordReportKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&subjectRecordReport, node, "bool", "");
		} else {
			
		}
	}
	const gchar *unscheduledVisitKey = "unscheduledVisit";
	node = json_object_get_member(pJsonObject, unscheduledVisitKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&unscheduledVisit, node, "bool", "");
		} else {
			
		}
	}
	const gchar *otherFormsKey = "otherForms";
	node = json_object_get_member(pJsonObject, otherFormsKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&otherForms, node, "bool", "");
		} else {
			
		}
	}
	const gchar *eproFormKey = "eproForm";
	node = json_object_get_member(pJsonObject, eproFormKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&eproForm, node, "bool", "");
		} else {
			
		}
	}
	const gchar *allowCopyKey = "allowCopy";
	node = json_object_get_member(pJsonObject, allowCopyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&allowCopy, node, "bool", "");
		} else {
			
		}
	}
	const gchar *disabledKey = "disabled";
	node = json_object_get_member(pJsonObject, disabledKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&disabled, node, "bool", "");
		} else {
			
		}
	}
	const gchar *dateCreatedKey = "dateCreated";
	node = json_object_get_member(pJsonObject, dateCreatedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateCreated, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dateModifiedKey = "dateModified";
	node = json_object_get_member(pJsonObject, dateModifiedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateModified, node, "std::string", "");
		} else {
			
		}
	}
}

Form::Form(char* json)
{
	this->fromJson(json);
}

char*
Form::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getStudyKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *studyKeyKey = "studyKey";
	json_object_set_member(pJsonObject, studyKeyKey, node);
	if (isprimitive("int")) {
		int obj = getFormId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *formIdKey = "formId";
	json_object_set_member(pJsonObject, formIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFormKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formKeyKey = "formKey";
	json_object_set_member(pJsonObject, formKeyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFormName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formNameKey = "formName";
	json_object_set_member(pJsonObject, formNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFormType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formTypeKey = "formType";
	json_object_set_member(pJsonObject, formTypeKey, node);
	if (isprimitive("int")) {
		int obj = getRevision();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *revisionKey = "revision";
	json_object_set_member(pJsonObject, revisionKey, node);
	if (isprimitive("bool")) {
		bool obj = getEmbeddedLog();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *embeddedLogKey = "embeddedLog";
	json_object_set_member(pJsonObject, embeddedLogKey, node);
	if (isprimitive("bool")) {
		bool obj = getEnforceOwnership();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *enforceOwnershipKey = "enforceOwnership";
	json_object_set_member(pJsonObject, enforceOwnershipKey, node);
	if (isprimitive("bool")) {
		bool obj = getUserAgreement();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *userAgreementKey = "userAgreement";
	json_object_set_member(pJsonObject, userAgreementKey, node);
	if (isprimitive("bool")) {
		bool obj = getSubjectRecordReport();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *subjectRecordReportKey = "subjectRecordReport";
	json_object_set_member(pJsonObject, subjectRecordReportKey, node);
	if (isprimitive("bool")) {
		bool obj = getUnscheduledVisit();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *unscheduledVisitKey = "unscheduledVisit";
	json_object_set_member(pJsonObject, unscheduledVisitKey, node);
	if (isprimitive("bool")) {
		bool obj = getOtherForms();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *otherFormsKey = "otherForms";
	json_object_set_member(pJsonObject, otherFormsKey, node);
	if (isprimitive("bool")) {
		bool obj = getEproForm();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *eproFormKey = "eproForm";
	json_object_set_member(pJsonObject, eproFormKey, node);
	if (isprimitive("bool")) {
		bool obj = getAllowCopy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *allowCopyKey = "allowCopy";
	json_object_set_member(pJsonObject, allowCopyKey, node);
	if (isprimitive("bool")) {
		bool obj = getDisabled();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *disabledKey = "disabled";
	json_object_set_member(pJsonObject, disabledKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateCreated();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateCreatedKey = "dateCreated";
	json_object_set_member(pJsonObject, dateCreatedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateModified();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateModifiedKey = "dateModified";
	json_object_set_member(pJsonObject, dateModifiedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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
Form::getEmbeddedLog()
{
	return embeddedLog;
}

void
Form::setEmbeddedLog(bool  embeddedLog)
{
	this->embeddedLog = embeddedLog;
}

bool
Form::getEnforceOwnership()
{
	return enforceOwnership;
}

void
Form::setEnforceOwnership(bool  enforceOwnership)
{
	this->enforceOwnership = enforceOwnership;
}

bool
Form::getUserAgreement()
{
	return userAgreement;
}

void
Form::setUserAgreement(bool  userAgreement)
{
	this->userAgreement = userAgreement;
}

bool
Form::getSubjectRecordReport()
{
	return subjectRecordReport;
}

void
Form::setSubjectRecordReport(bool  subjectRecordReport)
{
	this->subjectRecordReport = subjectRecordReport;
}

bool
Form::getUnscheduledVisit()
{
	return unscheduledVisit;
}

void
Form::setUnscheduledVisit(bool  unscheduledVisit)
{
	this->unscheduledVisit = unscheduledVisit;
}

bool
Form::getOtherForms()
{
	return otherForms;
}

void
Form::setOtherForms(bool  otherForms)
{
	this->otherForms = otherForms;
}

bool
Form::getEproForm()
{
	return eproForm;
}

void
Form::setEproForm(bool  eproForm)
{
	this->eproForm = eproForm;
}

bool
Form::getAllowCopy()
{
	return allowCopy;
}

void
Form::setAllowCopy(bool  allowCopy)
{
	this->allowCopy = allowCopy;
}

bool
Form::getDisabled()
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


