/*
 * Site.h
 *
 * 
 */

#ifndef _Site_H_
#define _Site_H_


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

class Site : public Object {
public:
	/*! \brief Constructor.
	 */
	Site();
	Site(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Site();

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
	/*! \brief Get Unique site ID
	 */
	int getSiteId();

	/*! \brief Set Unique site ID
	 */
	void setSiteId(int  siteId);
	/*! \brief Get Name of the site
	 */
	std::string getSiteName();

	/*! \brief Set Name of the site
	 */
	void setSiteName(std::string  siteName);
	/*! \brief Get Enrollment status of the site
	 */
	std::string getSiteEnrollmentStatus();

	/*! \brief Set Enrollment status of the site
	 */
	void setSiteEnrollmentStatus(std::string  siteEnrollmentStatus);
	/*! \brief Get Date when this site was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when this site was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Date when this site was last modified
	 */
	std::string getDateModified();

	/*! \brief Set Date when this site was last modified
	 */
	void setDateModified(std::string  dateModified);

private:
	std::string studyKey;
	int siteId;
	std::string siteName;
	std::string siteEnrollmentStatus;
	std::string dateCreated;
	std::string dateModified;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Site_H_ */
