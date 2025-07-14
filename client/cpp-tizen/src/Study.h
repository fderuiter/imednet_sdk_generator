/*
 * Study.h
 *
 * 
 */

#ifndef _Study_H_
#define _Study_H_


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

class Study : public Object {
public:
	/*! \brief Constructor.
	 */
	Study();
	Study(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Study();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Sponsor key that this study belongs to
	 */
	std::string getSponsorKey();

	/*! \brief Set Sponsor key that this study belongs to
	 */
	void setSponsorKey(std::string  sponsorKey);
	/*! \brief Get Unique study key
	 */
	std::string getStudyKey();

	/*! \brief Set Unique study key
	 */
	void setStudyKey(std::string  studyKey);
	/*! \brief Get Mednet study ID (internal numeric identifier)
	 */
	int getStudyId();

	/*! \brief Set Mednet study ID (internal numeric identifier)
	 */
	void setStudyId(int  studyId);
	/*! \brief Get Name of the study
	 */
	std::string getStudyName();

	/*! \brief Set Name of the study
	 */
	void setStudyName(std::string  studyName);
	/*! \brief Get Description of the study
	 */
	std::string getStudyDescription();

	/*! \brief Set Description of the study
	 */
	void setStudyDescription(std::string  studyDescription);
	/*! \brief Get Type of study (e.g., STUDY)
	 */
	std::string getStudyType();

	/*! \brief Set Type of study (e.g., STUDY)
	 */
	void setStudyType(std::string  studyType);
	/*! \brief Get Date when the study record was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when the study record was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Date when the study record was last modified
	 */
	std::string getDateModified();

	/*! \brief Set Date when the study record was last modified
	 */
	void setDateModified(std::string  dateModified);

private:
	std::string sponsorKey;
	std::string studyKey;
	int studyId;
	std::string studyName;
	std::string studyDescription;
	std::string studyType;
	std::string dateCreated;
	std::string dateModified;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Study_H_ */
