

#include "Inline_object_3.h"

using namespace Tiny;

Inline_object_3::Inline_object_3()
{
	metadata = Metadata();
}

Inline_object_3::Inline_object_3(std::string jsonString)
{
	this->fromJson(jsonString);
}

Inline_object_3::~Inline_object_3()
{

}

void
Inline_object_3::fromJson(std::string jsonObj)
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
Inline_object_3::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();


    return object;

}

Metadata
Inline_object_3::getMetadata()
{
	return metadata;
}

void
Inline_object_3::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}



