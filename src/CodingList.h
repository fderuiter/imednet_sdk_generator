/*
 * CodingList.h
 *
 * 
 */

#ifndef _CodingList_H_
#define _CodingList_H_


#include <string>
#include "Coding.h"
#include "Metadata.h"
#include "Pagination.h"
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

class CodingList : public Object {
public:
	/*! \brief Constructor.
	 */
	CodingList();
	CodingList(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CodingList();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Metadata getMetadata();

	/*! \brief Set 
	 */
	void setMetadata(Metadata  metadata);
	/*! \brief Get 
	 */
	Pagination getPagination();

	/*! \brief Set 
	 */
	void setPagination(Pagination  pagination);
	/*! \brief Get 
	 */
	std::list<Coding> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Coding> data);

private:
	Metadata metadata;
	Pagination pagination;
	std::list <Coding>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CodingList_H_ */
