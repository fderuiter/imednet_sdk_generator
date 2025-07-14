/*
 * Form.h
 *
 * 
 */

#ifndef _Form_H_
#define _Form_H_


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

class Form : public Object {
public:
	/*! \brief Constructor.
	 */
	Form();
	Form(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Form();

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
	/*! \brief Get Mednet Form ID
	 */
	int getFormId();

	/*! \brief Set Mednet Form ID
	 */
	void setFormId(int  formId);
	/*! \brief Get User-defined form key
	 */
	std::string getFormKey();

	/*! \brief Set User-defined form key
	 */
	void setFormKey(std::string  formKey);
	/*! \brief Get Name of the form (eCRF)
	 */
	std::string getFormName();

	/*! \brief Set Name of the form (eCRF)
	 */
	void setFormName(std::string  formName);
	/*! \brief Get Type of the form (e.g., Subject or Site)
	 */
	std::string getFormType();

	/*! \brief Set Type of the form (e.g., Subject or Site)
	 */
	void setFormType(std::string  formType);
	/*! \brief Get Number of modifications (revisions) of the form metadata
	 */
	int getRevision();

	/*! \brief Set Number of modifications (revisions) of the form metadata
	 */
	void setRevision(int  revision);
	/*! \brief Get Whether the form has an embedded log
	 */
	bool getEmbeddedLog();

	/*! \brief Set Whether the form has an embedded log
	 */
	void setEmbeddedLog(bool  embeddedLog);
	/*! \brief Get Whether the form enforces record ownership
	 */
	bool getEnforceOwnership();

	/*! \brief Set Whether the form enforces record ownership
	 */
	void setEnforceOwnership(bool  enforceOwnership);
	/*! \brief Get Whether the form requires a user agreement
	 */
	bool getUserAgreement();

	/*! \brief Set Whether the form requires a user agreement
	 */
	void setUserAgreement(bool  userAgreement);
	/*! \brief Get Whether the form is marked as a subject record report
	 */
	bool getSubjectRecordReport();

	/*! \brief Set Whether the form is marked as a subject record report
	 */
	void setSubjectRecordReport(bool  subjectRecordReport);
	/*! \brief Get Whether the form is included in unscheduled visits
	 */
	bool getUnscheduledVisit();

	/*! \brief Set Whether the form is included in unscheduled visits
	 */
	void setUnscheduledVisit(bool  unscheduledVisit);
	/*! \brief Get Whether the form is included in Other Forms category
	 */
	bool getOtherForms();

	/*! \brief Set Whether the form is included in Other Forms category
	 */
	void setOtherForms(bool  otherForms);
	/*! \brief Get Whether the form is an ePRO (electronic patient reported outcome) form
	 */
	bool getEproForm();

	/*! \brief Set Whether the form is an ePRO (electronic patient reported outcome) form
	 */
	void setEproForm(bool  eproForm);
	/*! \brief Get Whether the form allows copying of data
	 */
	bool getAllowCopy();

	/*! \brief Set Whether the form allows copying of data
	 */
	void setAllowCopy(bool  allowCopy);
	/*! \brief Get Whether the form is soft-deleted (disabled)
	 */
	bool getDisabled();

	/*! \brief Set Whether the form is soft-deleted (disabled)
	 */
	void setDisabled(bool  disabled);
	/*! \brief Get Date when this form was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when this form was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Date when this form was last modified
	 */
	std::string getDateModified();

	/*! \brief Set Date when this form was last modified
	 */
	void setDateModified(std::string  dateModified);

private:
	std::string studyKey;
	int formId;
	std::string formKey;
	std::string formName;
	std::string formType;
	int revision;
	bool embeddedLog;
	bool enforceOwnership;
	bool userAgreement;
	bool subjectRecordReport;
	bool unscheduledVisit;
	bool otherForms;
	bool eproForm;
	bool allowCopy;
	bool disabled;
	std::string dateCreated;
	std::string dateModified;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Form_H_ */
