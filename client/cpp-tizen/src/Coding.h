/*
 * Coding.h
 *
 * 
 */

#ifndef _Coding_H_
#define _Coding_H_


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

class Coding : public Object {
public:
	/*! \brief Constructor.
	 */
	Coding();
	Coding(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Coding();

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
	/*! \brief Get Name of the site associated with the coded data
	 */
	std::string getSiteName();

	/*! \brief Set Name of the site associated with the coded data
	 */
	void setSiteName(std::string  siteName);
	/*! \brief Get Site ID associated with the coded data
	 */
	int getSiteId();

	/*! \brief Set Site ID associated with the coded data
	 */
	void setSiteId(int  siteId);
	/*! \brief Get Subject ID associated with the coded data
	 */
	int getSubjectId();

	/*! \brief Set Subject ID associated with the coded data
	 */
	void setSubjectId(int  subjectId);
	/*! \brief Get Subject key (display ID) associated with the coded data
	 */
	std::string getSubjectKey();

	/*! \brief Set Subject key (display ID) associated with the coded data
	 */
	void setSubjectKey(std::string  subjectKey);
	/*! \brief Get Form ID where the coded data originates
	 */
	int getFormId();

	/*! \brief Set Form ID where the coded data originates
	 */
	void setFormId(int  formId);
	/*! \brief Get Name of the form where the coded data originates
	 */
	std::string getFormName();

	/*! \brief Set Name of the form where the coded data originates
	 */
	void setFormName(std::string  formName);
	/*! \brief Get Form key where the coded data originates
	 */
	std::string getFormKey();

	/*! \brief Set Form key where the coded data originates
	 */
	void setFormKey(std::string  formKey);
	/*! \brief Get Revision number of the coding entry
	 */
	int getRevision();

	/*! \brief Set Revision number of the coding entry
	 */
	void setRevision(int  revision);
	/*! \brief Get Record ID associated with the coded data
	 */
	int getRecordId();

	/*! \brief Set Record ID associated with the coded data
	 */
	void setRecordId(int  recordId);
	/*! \brief Get Variable name (field) that was coded
	 */
	std::string getVariable();

	/*! \brief Set Variable name (field) that was coded
	 */
	void setVariable(std::string  variable);
	/*! \brief Get Original value entered that required coding
	 */
	std::string getValue();

	/*! \brief Set Original value entered that required coding
	 */
	void setValue(std::string  value);
	/*! \brief Get Mednet coding ID
	 */
	int getCodingId();

	/*! \brief Set Mednet coding ID
	 */
	void setCodingId(int  codingId);
	/*! \brief Get Standardized code assigned (e.g., dictionary term)
	 */
	std::string getCode();

	/*! \brief Set Standardized code assigned (e.g., dictionary term)
	 */
	void setCode(std::string  code);
	/*! \brief Get Name of the user who performed the coding
	 */
	std::string getCodedBy();

	/*! \brief Set Name of the user who performed the coding
	 */
	void setCodedBy(std::string  codedBy);
	/*! \brief Get Reason for coding or any notes on changes
	 */
	std::string getReason();

	/*! \brief Set Reason for coding or any notes on changes
	 */
	void setReason(std::string  reason);
	/*! \brief Get Name of the dictionary used (e.g., MedDRA)
	 */
	std::string getDictionaryName();

	/*! \brief Set Name of the dictionary used (e.g., MedDRA)
	 */
	void setDictionaryName(std::string  dictionaryName);
	/*! \brief Get Version of the dictionary used
	 */
	std::string getDictionaryVersion();

	/*! \brief Set Version of the dictionary used
	 */
	void setDictionaryVersion(std::string  dictionaryVersion);
	/*! \brief Get Date when the coding was performed
	 */
	std::string getDateCoded();

	/*! \brief Set Date when the coding was performed
	 */
	void setDateCoded(std::string  dateCoded);

private:
	std::string studyKey;
	std::string siteName;
	int siteId;
	int subjectId;
	std::string subjectKey;
	int formId;
	std::string formName;
	std::string formKey;
	int revision;
	int recordId;
	std::string variable;
	std::string value;
	int codingId;
	std::string code;
	std::string codedBy;
	std::string reason;
	std::string dictionaryName;
	std::string dictionaryVersion;
	std::string dateCoded;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Coding_H_ */
