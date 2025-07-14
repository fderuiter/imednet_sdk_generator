
/*
 * FormList.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_FormList_H_
#define TINY_CPP_CLIENT_FormList_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Form.h"
#include "Metadata.h"
#include "Pagination.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class FormList{
public:

    /*! \brief Constructor.
	 */
    FormList();
    FormList(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~FormList();


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
	std::list<Form> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Form> data);


    private:
    Metadata metadata;
    Pagination pagination;
    std::list<Form> data;
};
}

#endif /* TINY_CPP_CLIENT_FormList_H_ */
