/*
 * RecordRevisionList.h
 *
 * 
 */

#ifndef _RecordRevisionList_H_
#define _RecordRevisionList_H_


#include <string>
#include "Metadata.h"
#include "Pagination.h"
#include "RecordRevision.h"
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

class RecordRevisionList : public Object {
public:
	/*! \brief Constructor.
	 */
	RecordRevisionList();
	RecordRevisionList(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RecordRevisionList();

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
	std::list<RecordRevision> getData();

	/*! \brief Set 
	 */
	void setData(std::list <RecordRevision> data);

private:
	Metadata metadata;
	Pagination pagination;
	std::list <RecordRevision>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RecordRevisionList_H_ */
