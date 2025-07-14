/*
 * Record.h
 *
 * 
 */

#ifndef _Record_H_
#define _Record_H_


#include <string>
#include "AnyType.h"
#include "Keyword.h"
#include <list>
#include <map>
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

class Record : public Object {
public:
	/*! \brief Constructor.
	 */
	Record();
	Record(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Record();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Unique study key
	 */
	std::string getStudyKey();

	/*! \brief Set Unique study key
	 */
	void setStudyKey(std::string  studyKey);
	/*! \brief Get Interval ID (visit definition) that this record is associated with
	 */
	int getIntervalId();

	/*! \brief Set Interval ID (visit definition) that this record is associated with
	 */
	void setIntervalId(int  intervalId);
	/*! \brief Get Form ID of the form this record instance belongs to
	 */
	int getFormId();

	/*! \brief Set Form ID of the form this record instance belongs to
	 */
	void setFormId(int  formId);
	/*! \brief Get Form key of the form for this record instance
	 */
	std::string getFormKey();

	/*! \brief Set Form key of the form for this record instance
	 */
	void setFormKey(std::string  formKey);
	/*! \brief Get Site ID associated with the record
	 */
	int getSiteId();

	/*! \brief Set Site ID associated with the record
	 */
	void setSiteId(int  siteId);
	/*! \brief Get Unique record ID
	 */
	int getRecordId();

	/*! \brief Set Unique record ID
	 */
	void setRecordId(int  recordId);
	/*! \brief Get Client-assigned record OID
	 */
	std::string getRecordOid();

	/*! \brief Set Client-assigned record OID
	 */
	void setRecordOid(std::string  recordOid);
	/*! \brief Get Type of record (e.g., SUBJECT for subject-related forms)
	 */
	std::string getRecordType();

	/*! \brief Set Type of record (e.g., SUBJECT for subject-related forms)
	 */
	void setRecordType(std::string  recordType);
	/*! \brief Get Current status of the record (e.g., Record Incomplete, Record Complete)
	 */
	std::string getRecordStatus();

	/*! \brief Set Current status of the record (e.g., Record Incomplete, Record Complete)
	 */
	void setRecordStatus(std::string  recordStatus);
	/*! \brief Get Whether the record is marked as deleted
	 */
	bool getDeleted();

	/*! \brief Set Whether the record is marked as deleted
	 */
	void setDeleted(bool  deleted);
	/*! \brief Get Date when this record was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when this record was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Date when this record was last modified
	 */
	std::string getDateModified();

	/*! \brief Set Date when this record was last modified
	 */
	void setDateModified(std::string  dateModified);
	/*! \brief Get Mednet subject ID that this record is associated with
	 */
	int getSubjectId();

	/*! \brief Set Mednet subject ID that this record is associated with
	 */
	void setSubjectId(int  subjectId);
	/*! \brief Get Client-assigned subject OID for the subject this record is associated with
	 */
	std::string getSubjectOid();

	/*! \brief Set Client-assigned subject OID for the subject this record is associated with
	 */
	void setSubjectOid(std::string  subjectOid);
	/*! \brief Get Subject display ID that this record is associated with
	 */
	std::string getSubjectKey();

	/*! \brief Set Subject display ID that this record is associated with
	 */
	void setSubjectKey(std::string  subjectKey);
	/*! \brief Get Visit instance ID that this record is associated with (if applicable)
	 */
	int getVisitId();

	/*! \brief Set Visit instance ID that this record is associated with (if applicable)
	 */
	void setVisitId(int  visitId);
	/*! \brief Get Record ID of the parent record if this record is a subrecord (if applicable)
	 */
	int getParentRecordId();

	/*! \brief Set Record ID of the parent record if this record is a subrecord (if applicable)
	 */
	void setParentRecordId(int  parentRecordId);
	/*! \brief Get List of keywords associated with the record
	 */
	std::list<Keyword> getKeywords();

	/*! \brief Set List of keywords associated with the record
	 */
	void setKeywords(std::list <Keyword> keywords);
	/*! \brief Get Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.
	 */
	std::map<std::string, std::string> getRecordData();

	/*! \brief Set Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.
	 */
	void setRecordData(std::map <std::string, std::string> recordData);

private:
	std::string studyKey;
	int intervalId;
	int formId;
	std::string formKey;
	int siteId;
	int recordId;
	std::string recordOid;
	std::string recordType;
	std::string recordStatus;
	bool deleted;
	std::string dateCreated;
	std::string dateModified;
	int subjectId;
	std::string subjectOid;
	std::string subjectKey;
	int visitId;
	int parentRecordId;
	std::list <Keyword>keywords;
	std::map <std::string, std::string>recordData;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Record_H_ */
