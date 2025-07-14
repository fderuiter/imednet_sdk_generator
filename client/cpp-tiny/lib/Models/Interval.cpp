

#include "Interval.h"

using namespace Tiny;

Interval::Interval()
{
	studyKey = std::string();
	intervalId = int(0);
	intervalName = std::string();
	intervalDescription = std::string();
	intervalSequence = int(0);
	intervalGroupId = int(0);
	intervalGroupName = std::string();
	timeline = std::string();
	definedUsingInterval = std::string();
	windowCalculationForm = std::string();
	windowCalculationDate = std::string();
	actualDateForm = std::string();
	actualDate = std::string();
	dueDateWillBeIn = int(0);
	negativeSlack = int(0);
	positiveSlack = int(0);
	eproGracePeriod = int(0);
	forms = std::list<Components_schemas_Interval_forms_item>();
	disabled = bool(false);
	dateCreated = std::string();
	dateModified = std::string();
}

Interval::Interval(std::string jsonString)
{
	this->fromJson(jsonString);
}

Interval::~Interval()
{

}

void
Interval::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


    }

    const char *intervalIdKey = "intervalId";

    if(object.has_key(intervalIdKey))
    {
        bourne::json value = object[intervalIdKey];



        jsonToValue(&intervalId, value, "int");


    }

    const char *intervalNameKey = "intervalName";

    if(object.has_key(intervalNameKey))
    {
        bourne::json value = object[intervalNameKey];



        jsonToValue(&intervalName, value, "std::string");


    }

    const char *intervalDescriptionKey = "intervalDescription";

    if(object.has_key(intervalDescriptionKey))
    {
        bourne::json value = object[intervalDescriptionKey];



        jsonToValue(&intervalDescription, value, "std::string");


    }

    const char *intervalSequenceKey = "intervalSequence";

    if(object.has_key(intervalSequenceKey))
    {
        bourne::json value = object[intervalSequenceKey];



        jsonToValue(&intervalSequence, value, "int");


    }

    const char *intervalGroupIdKey = "intervalGroupId";

    if(object.has_key(intervalGroupIdKey))
    {
        bourne::json value = object[intervalGroupIdKey];



        jsonToValue(&intervalGroupId, value, "int");


    }

    const char *intervalGroupNameKey = "intervalGroupName";

    if(object.has_key(intervalGroupNameKey))
    {
        bourne::json value = object[intervalGroupNameKey];



        jsonToValue(&intervalGroupName, value, "std::string");


    }

    const char *timelineKey = "timeline";

    if(object.has_key(timelineKey))
    {
        bourne::json value = object[timelineKey];



        jsonToValue(&timeline, value, "std::string");


    }

    const char *definedUsingIntervalKey = "definedUsingInterval";

    if(object.has_key(definedUsingIntervalKey))
    {
        bourne::json value = object[definedUsingIntervalKey];



        jsonToValue(&definedUsingInterval, value, "std::string");


    }

    const char *windowCalculationFormKey = "windowCalculationForm";

    if(object.has_key(windowCalculationFormKey))
    {
        bourne::json value = object[windowCalculationFormKey];



        jsonToValue(&windowCalculationForm, value, "std::string");


    }

    const char *windowCalculationDateKey = "windowCalculationDate";

    if(object.has_key(windowCalculationDateKey))
    {
        bourne::json value = object[windowCalculationDateKey];



        jsonToValue(&windowCalculationDate, value, "std::string");


    }

    const char *actualDateFormKey = "actualDateForm";

    if(object.has_key(actualDateFormKey))
    {
        bourne::json value = object[actualDateFormKey];



        jsonToValue(&actualDateForm, value, "std::string");


    }

    const char *actualDateKey = "actualDate";

    if(object.has_key(actualDateKey))
    {
        bourne::json value = object[actualDateKey];



        jsonToValue(&actualDate, value, "std::string");


    }

    const char *dueDateWillBeInKey = "dueDateWillBeIn";

    if(object.has_key(dueDateWillBeInKey))
    {
        bourne::json value = object[dueDateWillBeInKey];



        jsonToValue(&dueDateWillBeIn, value, "int");


    }

    const char *negativeSlackKey = "negativeSlack";

    if(object.has_key(negativeSlackKey))
    {
        bourne::json value = object[negativeSlackKey];



        jsonToValue(&negativeSlack, value, "int");


    }

    const char *positiveSlackKey = "positiveSlack";

    if(object.has_key(positiveSlackKey))
    {
        bourne::json value = object[positiveSlackKey];



        jsonToValue(&positiveSlack, value, "int");


    }

    const char *eproGracePeriodKey = "eproGracePeriod";

    if(object.has_key(eproGracePeriodKey))
    {
        bourne::json value = object[eproGracePeriodKey];



        jsonToValue(&eproGracePeriod, value, "int");


    }

    const char *formsKey = "forms";

    if(object.has_key(formsKey))
    {
        bourne::json value = object[formsKey];


        std::list<Components_schemas_Interval_forms_item> forms_list;
        Components_schemas_Interval_forms_item element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            forms_list.push_back(element);
        }
        forms = forms_list;


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
Interval::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["intervalId"] = getIntervalId();






    object["intervalName"] = getIntervalName();






    object["intervalDescription"] = getIntervalDescription();






    object["intervalSequence"] = getIntervalSequence();






    object["intervalGroupId"] = getIntervalGroupId();






    object["intervalGroupName"] = getIntervalGroupName();






    object["timeline"] = getTimeline();






    object["definedUsingInterval"] = getDefinedUsingInterval();






    object["windowCalculationForm"] = getWindowCalculationForm();






    object["windowCalculationDate"] = getWindowCalculationDate();






    object["actualDateForm"] = getActualDateForm();






    object["actualDate"] = getActualDate();






    object["dueDateWillBeIn"] = getDueDateWillBeIn();






    object["negativeSlack"] = getNegativeSlack();






    object["positiveSlack"] = getPositiveSlack();






    object["eproGracePeriod"] = getEproGracePeriod();





    std::list<Components_schemas_Interval_forms_item> forms_list = getForms();
    bourne::json forms_arr = bourne::json::array();

    for(auto& var : forms_list)
    {
        Components_schemas_Interval_forms_item obj = var;
        forms_arr.append(obj.toJson());
    }
    object["forms"] = forms_arr;







    object["disabled"] = isDisabled();






    object["dateCreated"] = getDateCreated();






    object["dateModified"] = getDateModified();



    return object;

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
Interval::isDisabled()
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



