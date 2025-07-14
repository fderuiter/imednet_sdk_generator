/*
 * Visit.h
 *
 * 
 */

#ifndef _Visit_H_
#define _Visit_H_


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

class Visit : public Object {
public:
	/*! \brief Constructor.
	 */
	Visit();
	Visit(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Visit();

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
	/*! \brief Get Unique system identifier for the subject visit instance
	 */
	int getVisitId();

	/*! \brief Set Unique system identifier for the subject visit instance
	 */
	void setVisitId(int  visitId);
	/*! \brief Get Unique system identifier of the interval definition for this visit
	 */
	int getIntervalId();

	/*! \brief Set Unique system identifier of the interval definition for this visit
	 */
	void setIntervalId(int  intervalId);
	/*! \brief Get Name of the interval (visit) for this visit instance
	 */
	std::string getIntervalName();

	/*! \brief Set Name of the interval (visit) for this visit instance
	 */
	void setIntervalName(std::string  intervalName);
	/*! \brief Get Mednet subject ID of the subject
	 */
	int getSubjectId();

	/*! \brief Set Mednet subject ID of the subject
	 */
	void setSubjectId(int  subjectId);
	/*! \brief Get Protocol-assigned subject identifier
	 */
	std::string getSubjectKey();

	/*! \brief Set Protocol-assigned subject identifier
	 */
	void setSubjectKey(std::string  subjectKey);
	/*! \brief Get Start date of the visit window (in YYYY-MM-DD format)
	 */
	std::string getStartDate();

	/*! \brief Set Start date of the visit window (in YYYY-MM-DD format)
	 */
	void setStartDate(std::string  startDate);
	/*! \brief Get End date of the visit window (in YYYY-MM-DD format)
	 */
	std::string getEndDate();

	/*! \brief Set End date of the visit window (in YYYY-MM-DD format)
	 */
	void setEndDate(std::string  endDate);
	/*! \brief Get Due date of the visit (in YYYY-MM-DD format), if applicable
	 */
	std::string getDueDate();

	/*! \brief Set Due date of the visit (in YYYY-MM-DD format), if applicable
	 */
	void setDueDate(std::string  dueDate);
	/*! \brief Get Actual date the visit took place (in YYYY-MM-DD format)
	 */
	std::string getVisitDate();

	/*! \brief Set Actual date the visit took place (in YYYY-MM-DD format)
	 */
	void setVisitDate(std::string  visitDate);
	/*! \brief Get Name of the form used to capture the actual visit date
	 */
	std::string getVisitDateForm();

	/*! \brief Set Name of the form used to capture the actual visit date
	 */
	void setVisitDateForm(std::string  visitDateForm);
	/*! \brief Get Variable name of the field capturing the actual visit date
	 */
	std::string getVisitDateQuestion();

	/*! \brief Set Variable name of the field capturing the actual visit date
	 */
	void setVisitDateQuestion(std::string  visitDateQuestion);
	/*! \brief Get Whether the visit instance is marked as deleted
	 */
	bool getDeleted();

	/*! \brief Set Whether the visit instance is marked as deleted
	 */
	void setDeleted(bool  deleted);
	/*! \brief Get Date when this visit record was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when this visit record was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Date when this visit record was last modified
	 */
	std::string getDateModified();

	/*! \brief Set Date when this visit record was last modified
	 */
	void setDateModified(std::string  dateModified);

private:
	std::string studyKey;
	int visitId;
	int intervalId;
	std::string intervalName;
	int subjectId;
	std::string subjectKey;
	std::string startDate;
	std::string endDate;
	std::string dueDate;
	std::string visitDate;
	std::string visitDateForm;
	std::string visitDateQuestion;
	bool deleted;
	std::string dateCreated;
	std::string dateModified;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Visit_H_ */
