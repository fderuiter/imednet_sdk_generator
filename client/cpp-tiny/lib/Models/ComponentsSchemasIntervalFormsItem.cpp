

#include "Components_schemas_Interval_forms_item.h"

using namespace Tiny;

Components_schemas_Interval_forms_item::Components_schemas_Interval_forms_item()
{
	formId = int(0);
	formKey = std::string();
	formName = std::string();
}

Components_schemas_Interval_forms_item::Components_schemas_Interval_forms_item(std::string jsonString)
{
	this->fromJson(jsonString);
}

Components_schemas_Interval_forms_item::~Components_schemas_Interval_forms_item()
{

}

void
Components_schemas_Interval_forms_item::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

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


}

bourne::json
Components_schemas_Interval_forms_item::toJson()
{
    bourne::json object = bourne::json::object();





    object["formId"] = getFormId();






    object["formKey"] = getFormKey();






    object["formName"] = getFormName();



    return object;

}

int
Components_schemas_Interval_forms_item::getFormId()
{
	return formId;
}

void
Components_schemas_Interval_forms_item::setFormId(int  formId)
{
	this->formId = formId;
}

std::string
Components_schemas_Interval_forms_item::getFormKey()
{
	return formKey;
}

void
Components_schemas_Interval_forms_item::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

std::string
Components_schemas_Interval_forms_item::getFormName()
{
	return formName;
}

void
Components_schemas_Interval_forms_item::setFormName(std::string  formName)
{
	this->formName = formName;
}



