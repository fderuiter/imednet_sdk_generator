

#include "Inline_object_2.h"

using namespace Tiny;

Inline_object_2::Inline_object_2()
{
	metadata = Metadata();
}

Inline_object_2::Inline_object_2(std::string jsonString)
{
	this->fromJson(jsonString);
}

Inline_object_2::~Inline_object_2()
{

}

void
Inline_object_2::fromJson(std::string jsonObj)
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
Inline_object_2::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();


    return object;

}

Metadata
Inline_object_2::getMetadata()
{
	return metadata;
}

void
Inline_object_2::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}



