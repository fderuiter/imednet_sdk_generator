/*
 * QueryComment.h
 *
 * 
 */

#ifndef _QueryComment_H_
#define _QueryComment_H_


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

class QueryComment : public Object {
public:
	/*! \brief Constructor.
	 */
	QueryComment();
	QueryComment(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QueryComment();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Sequence number of the comment/action in the query history
	 */
	int getSequence();

	/*! \brief Set Sequence number of the comment/action in the query history
	 */
	void setSequence(int  sequence);
	/*! \brief Get Status of the query after this comment (e.g., Open, Closed)
	 */
	std::string getAnnotationStatus();

	/*! \brief Set Status of the query after this comment (e.g., Open, Closed)
	 */
	void setAnnotationStatus(std::string  annotationStatus);
	/*! \brief Get Username of the user who made the comment or action
	 */
	std::string getUser();

	/*! \brief Set Username of the user who made the comment or action
	 */
	void setUser(std::string  user);
	/*! \brief Get Text of the comment
	 */
	std::string getComment();

	/*! \brief Set Text of the comment
	 */
	void setComment(std::string  comment);
	/*! \brief Get Whether the query was marked closed at this step
	 */
	bool getClosed();

	/*! \brief Set Whether the query was marked closed at this step
	 */
	void setClosed(bool  closed);
	/*! \brief Get Date of the comment or action
	 */
	std::string getDate();

	/*! \brief Set Date of the comment or action
	 */
	void setDate(std::string  date);

private:
	int sequence;
	std::string annotationStatus;
	std::string user;
	std::string comment;
	bool closed;
	std::string date;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QueryComment_H_ */
