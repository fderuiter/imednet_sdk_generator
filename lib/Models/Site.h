
/*
 * Site.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Site_H_
#define TINY_CPP_CLIENT_Site_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Site{
public:

    /*! \brief Constructor.
	 */
    Site();
    Site(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Site();


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
    std::string studyKey{};
    int siteId{};
    std::string siteName{};
    std::string siteEnrollmentStatus{};
    std::string dateCreated{};
    std::string dateModified{};
};
}

#endif /* TINY_CPP_CLIENT_Site_H_ */
