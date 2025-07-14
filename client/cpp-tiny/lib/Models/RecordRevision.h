
/*
 * RecordRevision.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_RecordRevision_H_
#define TINY_CPP_CLIENT_RecordRevision_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class RecordRevision{
public:

    /*! \brief Constructor.
	 */
    RecordRevision();
    RecordRevision(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~RecordRevision();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Unique study key
	 */
	std::string getStudyKey();

	/*! \brief Set Unique study key
	 */
	void setStudyKey(std::string  studyKey);
	/*! \brief Get Unique system identifier for the record revision
	 */
	int getRecordRevisionId();

	/*! \brief Set Unique system identifier for the record revision
	 */
	void setRecordRevisionId(int  recordRevisionId);
	/*! \brief Get Unique system identifier of the related record
	 */
	int getRecordId();

	/*! \brief Set Unique system identifier of the related record
	 */
	void setRecordId(int  recordId);
	/*! \brief Get Client-assigned record OID (if any)
	 */
	std::string getRecordOid();

	/*! \brief Set Client-assigned record OID (if any)
	 */
	void setRecordOid(std::string  recordOid);
	/*! \brief Get Revision number of the record (version of the record status)
	 */
	int getRecordRevision();

	/*! \brief Set Revision number of the record (version of the record status)
	 */
	void setRecordRevision(int  recordRevision);
	/*! \brief Get Revision number of the data within the record
	 */
	int getDataRevision();

	/*! \brief Set Revision number of the data within the record
	 */
	void setDataRevision(int  dataRevision);
	/*! \brief Get Status of the record at this revision (user-defined status label)
	 */
	std::string getRecordStatus();

	/*! \brief Set Status of the record at this revision (user-defined status label)
	 */
	void setRecordStatus(std::string  recordStatus);
	/*! \brief Get Mednet subject ID related to the record
	 */
	int getSubjectId();

	/*! \brief Set Mednet subject ID related to the record
	 */
	void setSubjectId(int  subjectId);
	/*! \brief Get Client-assigned subject OID related to the record
	 */
	std::string getSubjectOid();

	/*! \brief Set Client-assigned subject OID related to the record
	 */
	void setSubjectOid(std::string  subjectOid);
	/*! \brief Get Subject display ID related to the record
	 */
	std::string getSubjectKey();

	/*! \brief Set Subject display ID related to the record
	 */
	void setSubjectKey(std::string  subjectKey);
	/*! \brief Get Site ID related to the record
	 */
	int getSiteId();

	/*! \brief Set Site ID related to the record
	 */
	void setSiteId(int  siteId);
	/*! \brief Get Form key of the form that the record belongs to
	 */
	std::string getFormKey();

	/*! \brief Set Form key of the form that the record belongs to
	 */
	void setFormKey(std::string  formKey);
	/*! \brief Get Interval ID (visit definition) related to the record
	 */
	int getIntervalId();

	/*! \brief Set Interval ID (visit definition) related to the record
	 */
	void setIntervalId(int  intervalId);
	/*! \brief Get Role name of the user who saved the record revision
	 */
	std::string getRole();

	/*! \brief Set Role name of the user who saved the record revision
	 */
	void setRole(std::string  role);
	/*! \brief Get Username of the user who saved the record revision
	 */
	std::string getUser();

	/*! \brief Set Username of the user who saved the record revision
	 */
	void setUser(std::string  user);
	/*! \brief Get Reason for change, if provided (for audit trail)
	 */
	std::string getReasonForChange();

	/*! \brief Set Reason for change, if provided (for audit trail)
	 */
	void setReasonForChange(std::string  reasonForChange);
	/*! \brief Get Whether the record was deleted in this revision
	 */
	bool isDeleted();

	/*! \brief Set Whether the record was deleted in this revision
	 */
	void setDeleted(bool  deleted);
	/*! \brief Get Date when this record revision was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when this record revision was created
	 */
	void setDateCreated(std::string  dateCreated);


    private:
    std::string studyKey{};
    int recordRevisionId{};
    int recordId{};
    std::string recordOid{};
    int recordRevision{};
    int dataRevision{};
    std::string recordStatus{};
    int subjectId{};
    std::string subjectOid{};
    std::string subjectKey{};
    int siteId{};
    std::string formKey{};
    int intervalId{};
    std::string role{};
    std::string user{};
    std::string reasonForChange{};
    bool deleted{};
    std::string dateCreated{};
};
}

#endif /* TINY_CPP_CLIENT_RecordRevision_H_ */
