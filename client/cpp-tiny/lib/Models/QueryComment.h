
/*
 * QueryComment.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_QueryComment_H_
#define TINY_CPP_CLIENT_QueryComment_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class QueryComment{
public:

    /*! \brief Constructor.
	 */
    QueryComment();
    QueryComment(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~QueryComment();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
	bool isClosed();

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
    int sequence{};
    std::string annotationStatus{};
    std::string user{};
    std::string comment{};
    bool closed{};
    std::string date{};
};
}

#endif /* TINY_CPP_CLIENT_QueryComment_H_ */
