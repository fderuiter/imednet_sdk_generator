

#include "Inline_object.h"

using namespace Tiny;

Inline_object::Inline_object()
{
	metadata = Metadata();
}

Inline_object::Inline_object(std::string jsonString)
{
	this->fromJson(jsonString);
}

Inline_object::~Inline_object()
{

}

void
Inline_object::fromJson(std::string jsonObj)
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
Inline_object::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();


    return object;

}

Metadata
Inline_object::getMetadata()
{
	return metadata;
}

void
Inline_object::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}



