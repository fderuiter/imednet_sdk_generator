

#include "Inline_object_1.h"

using namespace Tiny;

Inline_object_1::Inline_object_1()
{
	metadata = Metadata();
}

Inline_object_1::Inline_object_1(std::string jsonString)
{
	this->fromJson(jsonString);
}

Inline_object_1::~Inline_object_1()
{

}

void
Inline_object_1::fromJson(std::string jsonObj)
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
Inline_object_1::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();


    return object;

}

Metadata
Inline_object_1::getMetadata()
{
	return metadata;
}

void
Inline_object_1::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}



