

#include "Inline_object_5.h"

using namespace Tiny;

Inline_object_5::Inline_object_5()
{
	metadata = Metadata();
}

Inline_object_5::Inline_object_5(std::string jsonString)
{
	this->fromJson(jsonString);
}

Inline_object_5::~Inline_object_5()
{

}

void
Inline_object_5::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *metadataKey = "metadata";

    if(object.has_key(metadataKey))
    {
        bourne::json value = object[metadataKey];




        Metadata* obj = &metadata;
		obj->fromJson(value.dump());

    }


}

bourne::json
Inline_object_5::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();


    return object;

}

Metadata
Inline_object_5::getMetadata()
{
	return metadata;
}

void
Inline_object_5::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}



