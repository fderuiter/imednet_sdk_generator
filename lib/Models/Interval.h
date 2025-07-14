
/*
 * Interval.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Interval_H_
#define TINY_CPP_CLIENT_Interval_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Components_schemas_Interval_forms_item.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Interval{
public:

    /*! \brief Constructor.
	 */
    Interval();
    Interval(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Interval();


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
	/*! \brief Get Unique system identifier for the interval (visit definition)
	 */
	int getIntervalId();

	/*! \brief Set Unique system identifier for the interval (visit definition)
	 */
	void setIntervalId(int  intervalId);
	/*! \brief Get Name of the interval (visit) as defined in the study
	 */
	std::string getIntervalName();

	/*! \brief Set Name of the interval (visit) as defined in the study
	 */
	void setIntervalName(std::string  intervalName);
	/*! \brief Get Description of the interval (visit)
	 */
	std::string getIntervalDescription();

	/*! \brief Set Description of the interval (visit)
	 */
	void setIntervalDescription(std::string  intervalDescription);
	/*! \brief Get Sequence number of the interval in the schedule
	 */
	int getIntervalSequence();

	/*! \brief Set Sequence number of the interval in the schedule
	 */
	void setIntervalSequence(int  intervalSequence);
	/*! \brief Get Identifier for the interval group (if intervals are grouped)
	 */
	int getIntervalGroupId();

	/*! \brief Set Identifier for the interval group (if intervals are grouped)
	 */
	void setIntervalGroupId(int  intervalGroupId);
	/*! \brief Get Name of the interval group
	 */
	std::string getIntervalGroupName();

	/*! \brief Set Name of the interval group
	 */
	void setIntervalGroupName(std::string  intervalGroupName);
	/*! \brief Get Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
	 */
	std::string getTimeline();

	/*! \brief Set Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
	 */
	void setTimeline(std::string  timeline);
	/*! \brief Get Baseline interval used for calculating this interval’s dates
	 */
	std::string getDefinedUsingInterval();

	/*! \brief Set Baseline interval used for calculating this interval’s dates
	 */
	void setDefinedUsingInterval(std::string  definedUsingInterval);
	/*! \brief Get Baseline form (name) from which the calculation date is taken
	 */
	std::string getWindowCalculationForm();

	/*! \brief Set Baseline form (name) from which the calculation date is taken
	 */
	void setWindowCalculationForm(std::string  windowCalculationForm);
	/*! \brief Get Baseline field (variable name) from which the calculation date is taken
	 */
	std::string getWindowCalculationDate();

	/*! \brief Set Baseline field (variable name) from which the calculation date is taken
	 */
	void setWindowCalculationDate(std::string  windowCalculationDate);
	/*! \brief Get Form used to capture the actual date for this interval
	 */
	std::string getActualDateForm();

	/*! \brief Set Form used to capture the actual date for this interval
	 */
	void setActualDateForm(std::string  actualDateForm);
	/*! \brief Get Field (variable name) used to capture the actual date for this interval
	 */
	std::string getActualDate();

	/*! \brief Set Field (variable name) used to capture the actual date for this interval
	 */
	void setActualDate(std::string  actualDate);
	/*! \brief Get Number of days from the calculation date when the interval is due
	 */
	int getDueDateWillBeIn();

	/*! \brief Set Number of days from the calculation date when the interval is due
	 */
	void setDueDateWillBeIn(int  dueDateWillBeIn);
	/*! \brief Get Number of days before the due date that are allowed (negative window)
	 */
	int getNegativeSlack();

	/*! \brief Set Number of days before the due date that are allowed (negative window)
	 */
	void setNegativeSlack(int  negativeSlack);
	/*! \brief Get Number of days after the due date that are allowed (positive window)
	 */
	int getPositiveSlack();

	/*! \brief Set Number of days after the due date that are allowed (positive window)
	 */
	void setPositiveSlack(int  positiveSlack);
	/*! \brief Get Number of days of grace period for ePRO completion after due date
	 */
	int getEproGracePeriod();

	/*! \brief Set Number of days of grace period for ePRO completion after due date
	 */
	void setEproGracePeriod(int  eproGracePeriod);
	/*! \brief Get List of forms that are scheduled in this interval
	 */
	std::list<Components_schemas_Interval_forms_item> getForms();

	/*! \brief Set List of forms that are scheduled in this interval
	 */
	void setForms(std::list <Components_schemas_Interval_forms_item> forms);
	/*! \brief Get Whether the interval is soft-deleted (disabled)
	 */
	bool isDisabled();

	/*! \brief Set Whether the interval is soft-deleted (disabled)
	 */
	void setDisabled(bool  disabled);
	/*! \brief Get Date when this interval was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when this interval was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Date when this interval was last modified
	 */
	std::string getDateModified();

	/*! \brief Set Date when this interval was last modified
	 */
	void setDateModified(std::string  dateModified);


    private:
    std::string studyKey{};
    int intervalId{};
    std::string intervalName{};
    std::string intervalDescription{};
    int intervalSequence{};
    int intervalGroupId{};
    std::string intervalGroupName{};
    std::string timeline{};
    std::string definedUsingInterval{};
    std::string windowCalculationForm{};
    std::string windowCalculationDate{};
    std::string actualDateForm{};
    std::string actualDate{};
    int dueDateWillBeIn{};
    int negativeSlack{};
    int positiveSlack{};
    int eproGracePeriod{};
    std::list<Components_schemas_Interval_forms_item> forms;
    bool disabled{};
    std::string dateCreated{};
    std::string dateModified{};
};
}

#endif /* TINY_CPP_CLIENT_Interval_H_ */
