
/*
 * RecordRevisionList.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_RecordRevisionList_H_
#define TINY_CPP_CLIENT_RecordRevisionList_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Metadata.h"
#include "Pagination.h"
#include "RecordRevision.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class RecordRevisionList{
public:

    /*! \brief Constructor.
	 */
    RecordRevisionList();
    RecordRevisionList(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~RecordRevisionList();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
    std::list<RecordRevision> data;
};
}

#endif /* TINY_CPP_CLIENT_RecordRevisionList_H_ */
