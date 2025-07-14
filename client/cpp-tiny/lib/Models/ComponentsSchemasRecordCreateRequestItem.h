
/*
 * Components_schemas_RecordCreateRequest_item.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Components_schemas_RecordCreateRequest_item_H_
#define TINY_CPP_CLIENT_Components_schemas_RecordCreateRequest_item_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "AnyType.h"
#include <map>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Components_schemas_RecordCreateRequest_item{
public:

    /*! \brief Constructor.
	 */
    Components_schemas_RecordCreateRequest_item();
    Components_schemas_RecordCreateRequest_item(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Components_schemas_RecordCreateRequest_item();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Form key identifying the eCRF to create or update
	 */
	std::string getFormKey();

	/*! \brief Set Form key identifying the eCRF to create or update
	 */
	void setFormKey(std::string  formKey);
	/*! \brief Get Form ID identifying the eCRF to create or update (alternative to formKey)
	 */
	int getFormId();

	/*! \brief Set Form ID identifying the eCRF to create or update (alternative to formKey)
	 */
	void setFormId(int  formId);
	/*! \brief Get Name of the site where the record should be created (for new subject registration)
	 */
	std::string getSiteName();

	/*! \brief Set Name of the site where the record should be created (for new subject registration)
	 */
	void setSiteName(std::string  siteName);
	/*! \brief Get Site ID for the record (alternative to siteName)
	 */
	int getSiteId();

	/*! \brief Set Site ID for the record (alternative to siteName)
	 */
	void setSiteId(int  siteId);
	/*! \brief Get Subject identifier (display ID) for which to create or update the record
	 */
	std::string getSubjectKey();

	/*! \brief Set Subject identifier (display ID) for which to create or update the record
	 */
	void setSubjectKey(std::string  subjectKey);
	/*! \brief Get Subject ID for which to create or update the record (alternative to subjectKey)
	 */
	int getSubjectId();

	/*! \brief Set Subject ID for which to create or update the record (alternative to subjectKey)
	 */
	void setSubjectId(int  subjectId);
	/*! \brief Get Subject OID for which to create or update the record (alternative to subjectKey)
	 */
	std::string getSubjectOid();

	/*! \brief Set Subject OID for which to create or update the record (alternative to subjectKey)
	 */
	void setSubjectOid(std::string  subjectOid);
	/*! \brief Get Name of the interval (visit) for a scheduled record update
	 */
	std::string getIntervalName();

	/*! \brief Set Name of the interval (visit) for a scheduled record update
	 */
	void setIntervalName(std::string  intervalName);
	/*! \brief Get Interval ID for a scheduled record update (alternative to intervalName)
	 */
	int getIntervalId();

	/*! \brief Set Interval ID for a scheduled record update (alternative to intervalName)
	 */
	void setIntervalId(int  intervalId);
	/*! \brief Get Record ID for updating an existing unscheduled record (if applicable)
	 */
	int getRecordId();

	/*! \brief Set Record ID for updating an existing unscheduled record (if applicable)
	 */
	void setRecordId(int  recordId);
	/*! \brief Get Record OID for updating an existing unscheduled record (if applicable)
	 */
	std::string getRecordOid();

	/*! \brief Set Record OID for updating an existing unscheduled record (if applicable)
	 */
	void setRecordOid(std::string  recordOid);
	/*! \brief Get Key-value pairs of field names and values for the record data
	 */
	Map<std::string, std::string> getData();

	/*! \brief Set Key-value pairs of field names and values for the record data
	 */
	void setData(Map <std::string, std::string> data);


    private:
    std::string formKey{};
    int formId{};
    std::string siteName{};
    int siteId{};
    std::string subjectKey{};
    int subjectId{};
    std::string subjectOid{};
    std::string intervalName{};
    int intervalId{};
    int recordId{};
    std::string recordOid{};
    Map<std::string, std::string> data;
};
}

#endif /* TINY_CPP_CLIENT_Components_schemas_RecordCreateRequest_item_H_ */
