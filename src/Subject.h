/*
 * Subject.h
 *
 * 
 */

#ifndef _Subject_H_
#define _Subject_H_


#include <string>
#include "Keyword.h"
#include <list>
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

class Subject : public Object {
public:
	/*! \brief Constructor.
	 */
	Subject();
	Subject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Subject();

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
	/*! \brief Get Mednet subject ID (internal numeric ID)
	 */
	int getSubjectId();

	/*! \brief Set Mednet subject ID (internal numeric ID)
	 */
	void setSubjectId(int  subjectId);
	/*! \brief Get Client-assigned subject object identifier (OID)
	 */
	std::string getSubjectOid();

	/*! \brief Set Client-assigned subject object identifier (OID)
	 */
	void setSubjectOid(std::string  subjectOid);
	/*! \brief Get Protocol-assigned subject identifier (display ID)
	 */
	std::string getSubjectKey();

	/*! \brief Set Protocol-assigned subject identifier (display ID)
	 */
	void setSubjectKey(std::string  subjectKey);
	/*! \brief Get Current status of the subject (e.g., Enrolled)
	 */
	std::string getSubjectStatus();

	/*! \brief Set Current status of the subject (e.g., Enrolled)
	 */
	void setSubjectStatus(std::string  subjectStatus);
	/*! \brief Get Mednet site ID the subject is associated with
	 */
	int getSiteId();

	/*! \brief Set Mednet site ID the subject is associated with
	 */
	void setSiteId(int  siteId);
	/*! \brief Get Name of the site the subject is associated with
	 */
	std::string getSiteName();

	/*! \brief Set Name of the site the subject is associated with
	 */
	void setSiteName(std::string  siteName);
	/*! \brief Get Whether the subject is marked as deleted
	 */
	bool getDeleted();

	/*! \brief Set Whether the subject is marked as deleted
	 */
	void setDeleted(bool  deleted);
	/*! \brief Get Subject’s enrollment start date
	 */
	std::string getEnrollmentStartDate();

	/*! \brief Set Subject’s enrollment start date
	 */
	void setEnrollmentStartDate(std::string  enrollmentStartDate);
	/*! \brief Get Date when this subject record was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when this subject record was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Date when this subject record was last modified
	 */
	std::string getDateModified();

	/*! \brief Set Date when this subject record was last modified
	 */
	void setDateModified(std::string  dateModified);
	/*! \brief Get List of keywords associated with the subject
	 */
	std::list<Keyword> getKeywords();

	/*! \brief Set List of keywords associated with the subject
	 */
	void setKeywords(std::list <Keyword> keywords);

private:
	std::string studyKey;
	int subjectId;
	std::string subjectOid;
	std::string subjectKey;
	std::string subjectStatus;
	int siteId;
	std::string siteName;
	bool deleted;
	std::string enrollmentStartDate;
	std::string dateCreated;
	std::string dateModified;
	std::list <Keyword>keywords;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Subject_H_ */
