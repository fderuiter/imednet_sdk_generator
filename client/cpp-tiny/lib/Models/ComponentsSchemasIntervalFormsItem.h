
/*
 * Components_schemas_Interval_forms_item.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Components_schemas_Interval_forms_item_H_
#define TINY_CPP_CLIENT_Components_schemas_Interval_forms_item_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Components_schemas_Interval_forms_item{
public:

    /*! \brief Constructor.
	 */
    Components_schemas_Interval_forms_item();
    Components_schemas_Interval_forms_item(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Components_schemas_Interval_forms_item();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
    int formId{};
    std::string formKey{};
    std::string formName{};
};
}

#endif /* TINY_CPP_CLIENT_Components_schemas_Interval_forms_item_H_ */
