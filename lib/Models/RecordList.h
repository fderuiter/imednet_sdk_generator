
/*
 * RecordList.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_RecordList_H_
#define TINY_CPP_CLIENT_RecordList_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Metadata.h"
#include "Pagination.h"
#include "Record.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class RecordList{
public:

    /*! \brief Constructor.
	 */
    RecordList();
    RecordList(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~RecordList();


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
	std::list<Record> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Record> data);


    private:
    Metadata metadata;
    Pagination pagination;
    std::list<Record> data;
};
}

#endif /* TINY_CPP_CLIENT_RecordList_H_ */
