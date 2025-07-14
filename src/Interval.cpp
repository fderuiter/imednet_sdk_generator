#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Interval.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Interval::Interval()
{
	//__init();
}

Interval::~Interval()
{
	//__cleanup();
}

void
Interval::__init()
{
	//studyKey = std::string();
	//intervalId = int(0);
	//intervalName = std::string();
	//intervalDescription = std::string();
	//intervalSequence = int(0);
	//intervalGroupId = int(0);
	//intervalGroupName = std::string();
	//timeline = std::string();
	//definedUsingInterval = std::string();
	//windowCalculationForm = std::string();
	//windowCalculationDate = std::string();
	//actualDateForm = std::string();
	//actualDate = std::string();
	//dueDateWillBeIn = int(0);
	//negativeSlack = int(0);
	//positiveSlack = int(0);
	//eproGracePeriod = int(0);
	//new std::list()std::list> forms;
	//disabled = bool(false);
	//dateCreated = std::string();
	//dateModified = std::string();
}

void
Interval::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
	//}
	//if(intervalId != NULL) {
	//
	//delete intervalId;
	//intervalId = NULL;
	//}
	//if(intervalName != NULL) {
	//
	//delete intervalName;
	//intervalName = NULL;
	//}
	//if(intervalDescription != NULL) {
	//
	//delete intervalDescription;
	//intervalDescription = NULL;
	//}
	//if(intervalSequence != NULL) {
	//
	//delete intervalSequence;
	//intervalSequence = NULL;
	//}
	//if(intervalGroupId != NULL) {
	//
	//delete intervalGroupId;
	//intervalGroupId = NULL;
	//}
	//if(intervalGroupName != NULL) {
	//
	//delete intervalGroupName;
	//intervalGroupName = NULL;
	//}
	//if(timeline != NULL) {
	//
	//delete timeline;
	//timeline = NULL;
	//}
	//if(definedUsingInterval != NULL) {
	//
	//delete definedUsingInterval;
	//definedUsingInterval = NULL;
	//}
	//if(windowCalculationForm != NULL) {
	//
	//delete windowCalculationForm;
	//windowCalculationForm = NULL;
	//}
	//if(windowCalculationDate != NULL) {
	//
	//delete windowCalculationDate;
	//windowCalculationDate = NULL;
	//}
	//if(actualDateForm != NULL) {
	//
	//delete actualDateForm;
	//actualDateForm = NULL;
	//}
	//if(actualDate != NULL) {
	//
	//delete actualDate;
	//actualDate = NULL;
	//}
	//if(dueDateWillBeIn != NULL) {
	//
	//delete dueDateWillBeIn;
	//dueDateWillBeIn = NULL;
	//}
	//if(negativeSlack != NULL) {
	//
	//delete negativeSlack;
	//negativeSlack = NULL;
	//}
	//if(positiveSlack != NULL) {
	//
	//delete positiveSlack;
	//positiveSlack = NULL;
	//}
	//if(eproGracePeriod != NULL) {
	//
	//delete eproGracePeriod;
	//eproGracePeriod = NULL;
	//}
	//if(forms != NULL) {
	//forms.RemoveAll(true);
	//delete forms;
	//forms = NULL;
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
Interval::fromJson(char* jsonStr)
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
	const gchar *intervalIdKey = "intervalId";
	node = json_object_get_member(pJsonObject, intervalIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&intervalId, node, "int", "");
		} else {
			
		}
	}
	const gchar *intervalNameKey = "intervalName";
	node = json_object_get_member(pJsonObject, intervalNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&intervalName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *intervalDescriptionKey = "intervalDescription";
	node = json_object_get_member(pJsonObject, intervalDescriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&intervalDescription, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *intervalSequenceKey = "intervalSequence";
	node = json_object_get_member(pJsonObject, intervalSequenceKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&intervalSequence, node, "int", "");
		} else {
			
		}
	}
	const gchar *intervalGroupIdKey = "intervalGroupId";
	node = json_object_get_member(pJsonObject, intervalGroupIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&intervalGroupId, node, "int", "");
		} else {
			
		}
	}
	const gchar *intervalGroupNameKey = "intervalGroupName";
	node = json_object_get_member(pJsonObject, intervalGroupNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&intervalGroupName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timelineKey = "timeline";
	node = json_object_get_member(pJsonObject, timelineKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timeline, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *definedUsingIntervalKey = "definedUsingInterval";
	node = json_object_get_member(pJsonObject, definedUsingIntervalKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&definedUsingInterval, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *windowCalculationFormKey = "windowCalculationForm";
	node = json_object_get_member(pJsonObject, windowCalculationFormKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&windowCalculationForm, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *windowCalculationDateKey = "windowCalculationDate";
	node = json_object_get_member(pJsonObject, windowCalculationDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&windowCalculationDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *actualDateFormKey = "actualDateForm";
	node = json_object_get_member(pJsonObject, actualDateFormKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&actualDateForm, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *actualDateKey = "actualDate";
	node = json_object_get_member(pJsonObject, actualDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&actualDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dueDateWillBeInKey = "dueDateWillBeIn";
	node = json_object_get_member(pJsonObject, dueDateWillBeInKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&dueDateWillBeIn, node, "int", "");
		} else {
			
		}
	}
	const gchar *negativeSlackKey = "negativeSlack";
	node = json_object_get_member(pJsonObject, negativeSlackKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&negativeSlack, node, "int", "");
		} else {
			
		}
	}
	const gchar *positiveSlackKey = "positiveSlack";
	node = json_object_get_member(pJsonObject, positiveSlackKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&positiveSlack, node, "int", "");
		} else {
			
		}
	}
	const gchar *eproGracePeriodKey = "eproGracePeriod";
	node = json_object_get_member(pJsonObject, eproGracePeriodKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&eproGracePeriod, node, "int", "");
		} else {
			
		}
	}
	const gchar *formsKey = "forms";
	node = json_object_get_member(pJsonObject, formsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Components_schemas_Interval_forms_item> new_list;
			Components_schemas_Interval_forms_item inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Components_schemas_Interval_forms_item")) {
					jsonToValue(&inst, temp_json, "Components_schemas_Interval_forms_item", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			forms = new_list;
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

Interval::Interval(char* json)
{
	this->fromJson(json);
}

char*
Interval::toJson()
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
		int obj = getIntervalId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *intervalIdKey = "intervalId";
	json_object_set_member(pJsonObject, intervalIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIntervalName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *intervalNameKey = "intervalName";
	json_object_set_member(pJsonObject, intervalNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIntervalDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *intervalDescriptionKey = "intervalDescription";
	json_object_set_member(pJsonObject, intervalDescriptionKey, node);
	if (isprimitive("int")) {
		int obj = getIntervalSequence();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *intervalSequenceKey = "intervalSequence";
	json_object_set_member(pJsonObject, intervalSequenceKey, node);
	if (isprimitive("int")) {
		int obj = getIntervalGroupId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *intervalGroupIdKey = "intervalGroupId";
	json_object_set_member(pJsonObject, intervalGroupIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIntervalGroupName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *intervalGroupNameKey = "intervalGroupName";
	json_object_set_member(pJsonObject, intervalGroupNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimeline();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timelineKey = "timeline";
	json_object_set_member(pJsonObject, timelineKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDefinedUsingInterval();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *definedUsingIntervalKey = "definedUsingInterval";
	json_object_set_member(pJsonObject, definedUsingIntervalKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getWindowCalculationForm();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *windowCalculationFormKey = "windowCalculationForm";
	json_object_set_member(pJsonObject, windowCalculationFormKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getWindowCalculationDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *windowCalculationDateKey = "windowCalculationDate";
	json_object_set_member(pJsonObject, windowCalculationDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getActualDateForm();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *actualDateFormKey = "actualDateForm";
	json_object_set_member(pJsonObject, actualDateFormKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getActualDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *actualDateKey = "actualDate";
	json_object_set_member(pJsonObject, actualDateKey, node);
	if (isprimitive("int")) {
		int obj = getDueDateWillBeIn();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *dueDateWillBeInKey = "dueDateWillBeIn";
	json_object_set_member(pJsonObject, dueDateWillBeInKey, node);
	if (isprimitive("int")) {
		int obj = getNegativeSlack();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *negativeSlackKey = "negativeSlack";
	json_object_set_member(pJsonObject, negativeSlackKey, node);
	if (isprimitive("int")) {
		int obj = getPositiveSlack();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *positiveSlackKey = "positiveSlack";
	json_object_set_member(pJsonObject, positiveSlackKey, node);
	if (isprimitive("int")) {
		int obj = getEproGracePeriod();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *eproGracePeriodKey = "eproGracePeriod";
	json_object_set_member(pJsonObject, eproGracePeriodKey, node);
	if (isprimitive("Components_schemas_Interval_forms_item")) {
		list<Components_schemas_Interval_forms_item> new_list = static_cast<list <Components_schemas_Interval_forms_item> > (getForms());
		node = converttoJson(&new_list, "Components_schemas_Interval_forms_item", "array");
	} else {
		node = json_node_alloc();
		list<Components_schemas_Interval_forms_item> new_list = static_cast<list <Components_schemas_Interval_forms_item> > (getForms());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Components_schemas_Interval_forms_item>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Components_schemas_Interval_forms_item obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *formsKey = "forms";
	json_object_set_member(pJsonObject, formsKey, node);
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
Interval::getStudyKey()
{
	return studyKey;
}

void
Interval::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
Interval::getIntervalId()
{
	return intervalId;
}

void
Interval::setIntervalId(int  intervalId)
{
	this->intervalId = intervalId;
}

std::string
Interval::getIntervalName()
{
	return intervalName;
}

void
Interval::setIntervalName(std::string  intervalName)
{
	this->intervalName = intervalName;
}

std::string
Interval::getIntervalDescription()
{
	return intervalDescription;
}

void
Interval::setIntervalDescription(std::string  intervalDescription)
{
	this->intervalDescription = intervalDescription;
}

int
Interval::getIntervalSequence()
{
	return intervalSequence;
}

void
Interval::setIntervalSequence(int  intervalSequence)
{
	this->intervalSequence = intervalSequence;
}

int
Interval::getIntervalGroupId()
{
	return intervalGroupId;
}

void
Interval::setIntervalGroupId(int  intervalGroupId)
{
	this->intervalGroupId = intervalGroupId;
}

std::string
Interval::getIntervalGroupName()
{
	return intervalGroupName;
}

void
Interval::setIntervalGroupName(std::string  intervalGroupName)
{
	this->intervalGroupName = intervalGroupName;
}

std::string
Interval::getTimeline()
{
	return timeline;
}

void
Interval::setTimeline(std::string  timeline)
{
	this->timeline = timeline;
}

std::string
Interval::getDefinedUsingInterval()
{
	return definedUsingInterval;
}

void
Interval::setDefinedUsingInterval(std::string  definedUsingInterval)
{
	this->definedUsingInterval = definedUsingInterval;
}

std::string
Interval::getWindowCalculationForm()
{
	return windowCalculationForm;
}

void
Interval::setWindowCalculationForm(std::string  windowCalculationForm)
{
	this->windowCalculationForm = windowCalculationForm;
}

std::string
Interval::getWindowCalculationDate()
{
	return windowCalculationDate;
}

void
Interval::setWindowCalculationDate(std::string  windowCalculationDate)
{
	this->windowCalculationDate = windowCalculationDate;
}

std::string
Interval::getActualDateForm()
{
	return actualDateForm;
}

void
Interval::setActualDateForm(std::string  actualDateForm)
{
	this->actualDateForm = actualDateForm;
}

std::string
Interval::getActualDate()
{
	return actualDate;
}

void
Interval::setActualDate(std::string  actualDate)
{
	this->actualDate = actualDate;
}

int
Interval::getDueDateWillBeIn()
{
	return dueDateWillBeIn;
}

void
Interval::setDueDateWillBeIn(int  dueDateWillBeIn)
{
	this->dueDateWillBeIn = dueDateWillBeIn;
}

int
Interval::getNegativeSlack()
{
	return negativeSlack;
}

void
Interval::setNegativeSlack(int  negativeSlack)
{
	this->negativeSlack = negativeSlack;
}

int
Interval::getPositiveSlack()
{
	return positiveSlack;
}

void
Interval::setPositiveSlack(int  positiveSlack)
{
	this->positiveSlack = positiveSlack;
}

int
Interval::getEproGracePeriod()
{
	return eproGracePeriod;
}

void
Interval::setEproGracePeriod(int  eproGracePeriod)
{
	this->eproGracePeriod = eproGracePeriod;
}

std::list<Components_schemas_Interval_forms_item>
Interval::getForms()
{
	return forms;
}

void
Interval::setForms(std::list <Components_schemas_Interval_forms_item> forms)
{
	this->forms = forms;
}

bool
Interval::getDisabled()
{
	return disabled;
}

void
Interval::setDisabled(bool  disabled)
{
	this->disabled = disabled;
}

std::string
Interval::getDateCreated()
{
	return dateCreated;
}

void
Interval::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Interval::getDateModified()
{
	return dateModified;
}

void
Interval::setDateModified(std::string  dateModified)
{
	this->dateModified = dateModified;
}


