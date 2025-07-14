/*
 * Components_schemas_Interval_forms_item.h
 *
 * 
 */

#ifndef _Components_schemas_Interval_forms_item_H_
#define _Components_schemas_Interval_forms_item_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Components_schemas_Interval_forms_item : public Object {
public:
	/*! \brief Constructor.
	 */
	Components_schemas_Interval_forms_item();
	Components_schemas_Interval_forms_item(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Components_schemas_Interval_forms_item();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Form ID scheduled in the interval
	 */
	int getFormId();

	/*! \brief Set Form ID scheduled in the interval
	 */
	void setFormId(int  formId);
	/*! \brief Get Form key scheduled in the interval
	 */
	std::string getFormKey();

	/*! \brief Set Form key scheduled in the interval
	 */
	void setFormKey(std::string  formKey);
	/*! \brief Get Form name scheduled in the interval
	 */
	std::string getFormName();

	/*! \brief Set Form name scheduled in the interval
	 */
	void setFormName(std::string  formName);

private:
	int formId;
	std::string formKey;
	std::string formName;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Components_schemas_Interval_forms_item_H_ */
