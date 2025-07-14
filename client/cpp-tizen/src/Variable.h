/*
 * Variable.h
 *
 * 
 */

#ifndef _Variable_H_
#define _Variable_H_


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

class Variable : public Object {
public:
	/*! \brief Constructor.
	 */
	Variable();
	Variable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Variable();

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
	/*! \brief Get Mednet variable ID
	 */
	int getVariableId();

	/*! \brief Set Mednet variable ID
	 */
	void setVariableId(int  variableId);
	/*! \brief Get Type of the variable (field type), e.g., RADIO, TEXT, etc.
	 */
	std::string getVariableType();

	/*! \brief Set Type of the variable (field type), e.g., RADIO, TEXT, etc.
	 */
	void setVariableType(std::string  variableType);
	/*! \brief Get Name of the variable (question text or label)
	 */
	std::string getVariableName();

	/*! \brief Set Name of the variable (question text or label)
	 */
	void setVariableName(std::string  variableName);
	/*! \brief Get Sequence of the variable on the form
	 */
	int getSequence();

	/*! \brief Set Sequence of the variable on the form
	 */
	void setSequence(int  sequence);
	/*! \brief Get Number of modifications of the variable (via form metadata revisions)
	 */
	int getRevision();

	/*! \brief Set Number of modifications of the variable (via form metadata revisions)
	 */
	void setRevision(int  revision);
	/*! \brief Get Whether the variable is marked as disabled (deleted)
	 */
	bool getDisabled();

	/*! \brief Set Whether the variable is marked as disabled (deleted)
	 */
	void setDisabled(bool  disabled);
	/*! \brief Get Date when this variable was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when this variable was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Date when this variable was last modified
	 */
	std::string getDateModified();

	/*! \brief Set Date when this variable was last modified
	 */
	void setDateModified(std::string  dateModified);
	/*! \brief Get ID of the form that this variable belongs to
	 */
	int getFormId();

	/*! \brief Set ID of the form that this variable belongs to
	 */
	void setFormId(int  formId);
	/*! \brief Get Client-assigned variable OID
	 */
	std::string getVariableOid();

	/*! \brief Set Client-assigned variable OID
	 */
	void setVariableOid(std::string  variableOid);
	/*! \brief Get Whether the variable is marked as deleted
	 */
	bool getDeleted();

	/*! \brief Set Whether the variable is marked as deleted
	 */
	void setDeleted(bool  deleted);
	/*! \brief Get Form key of the form that this variable belongs to
	 */
	std::string getFormKey();

	/*! \brief Set Form key of the form that this variable belongs to
	 */
	void setFormKey(std::string  formKey);
	/*! \brief Get Name of the form that this variable belongs to
	 */
	std::string getFormName();

	/*! \brief Set Name of the form that this variable belongs to
	 */
	void setFormName(std::string  formName);
	/*! \brief Get User-defined identifier (field name) for the variable
	 */
	std::string getLabel();

	/*! \brief Set User-defined identifier (field name) for the variable
	 */
	void setLabel(std::string  label);
	/*! \brief Get Whether the variable is flagged as blinded (hidden in certain contexts)
	 */
	bool getBlinded();

	/*! \brief Set Whether the variable is flagged as blinded (hidden in certain contexts)
	 */
	void setBlinded(bool  blinded);

private:
	std::string studyKey;
	int variableId;
	std::string variableType;
	std::string variableName;
	int sequence;
	int revision;
	bool disabled;
	std::string dateCreated;
	std::string dateModified;
	int formId;
	std::string variableOid;
	bool deleted;
	std::string formKey;
	std::string formName;
	std::string label;
	bool blinded;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Variable_H_ */
