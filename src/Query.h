/*
 * Query.h
 *
 * 
 */

#ifndef _Query_H_
#define _Query_H_


#include <string>
#include "QueryComment.h"
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

class Query : public Object {
public:
	/*! \brief Constructor.
	 */
	Query();
	Query(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Query();

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
	/*! \brief Get Mednet subject ID associated with the query (if applicable)
	 */
	int getSubjectId();

	/*! \brief Set Mednet subject ID associated with the query (if applicable)
	 */
	void setSubjectId(int  subjectId);
	/*! \brief Get Client-assigned subject OID (if applicable)
	 */
	std::string getSubjectOid();

	/*! \brief Set Client-assigned subject OID (if applicable)
	 */
	void setSubjectOid(std::string  subjectOid);
	/*! \brief Get Category/type of the query (e.g., subject, record, question)
	 */
	std::string getAnnotationType();

	/*! \brief Set Category/type of the query (e.g., subject, record, question)
	 */
	void setAnnotationType(std::string  annotationType);
	/*! \brief Get Unique system identifier for the query
	 */
	int getAnnotationId();

	/*! \brief Set Unique system identifier for the query
	 */
	void setAnnotationId(int  annotationId);
	/*! \brief Get System text identifier for the query type/location (subject, record, question)
	 */
	std::string getType();

	/*! \brief Set System text identifier for the query type/location (subject, record, question)
	 */
	void setType(std::string  type);
	/*! \brief Get Description of the query (e.g., reason or context)
	 */
	std::string getDescription();

	/*! \brief Set Description of the query (e.g., reason or context)
	 */
	void setDescription(std::string  description);
	/*! \brief Get Record ID associated with the query (if applicable)
	 */
	int getRecordId();

	/*! \brief Set Record ID associated with the query (if applicable)
	 */
	void setRecordId(int  recordId);
	/*! \brief Get Variable name (field) associated with the query (if applicable)
	 */
	std::string getVariable();

	/*! \brief Set Variable name (field) associated with the query (if applicable)
	 */
	void setVariable(std::string  variable);
	/*! \brief Get Subject display ID associated with the query (if applicable)
	 */
	std::string getSubjectKey();

	/*! \brief Set Subject display ID associated with the query (if applicable)
	 */
	void setSubjectKey(std::string  subjectKey);
	/*! \brief Get Date when the query was created
	 */
	std::string getDateCreated();

	/*! \brief Set Date when the query was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Date when the query was last modified
	 */
	std::string getDateModified();

	/*! \brief Set Date when the query was last modified
	 */
	void setDateModified(std::string  dateModified);
	/*! \brief Get History of comments/actions on the query
	 */
	std::list<QueryComment> getQueryComments();

	/*! \brief Set History of comments/actions on the query
	 */
	void setQueryComments(std::list <QueryComment> queryComments);

private:
	std::string studyKey;
	int subjectId;
	std::string subjectOid;
	std::string annotationType;
	int annotationId;
	std::string type;
	std::string description;
	int recordId;
	std::string variable;
	std::string subjectKey;
	std::string dateCreated;
	std::string dateModified;
	std::list <QueryComment>queryComments;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Query_H_ */
