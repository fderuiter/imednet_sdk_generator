/*
 * RecordList.h
 *
 * 
 */

#ifndef _RecordList_H_
#define _RecordList_H_


#include <string>
#include "Metadata.h"
#include "Pagination.h"
#include "Record.h"
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

class RecordList : public Object {
public:
	/*! \brief Constructor.
	 */
	RecordList();
	RecordList(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RecordList();

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
	std::list<Record> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Record> data);

private:
	Metadata metadata;
	Pagination pagination;
	std::list <Record>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RecordList_H_ */
