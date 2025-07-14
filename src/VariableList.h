/*
 * VariableList.h
 *
 * 
 */

#ifndef _VariableList_H_
#define _VariableList_H_


#include <string>
#include "Metadata.h"
#include "Pagination.h"
#include "Variable.h"
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

class VariableList : public Object {
public:
	/*! \brief Constructor.
	 */
	VariableList();
	VariableList(char* str);

	/*! \brief Destructor.
	 */
	virtual ~VariableList();

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
	std::list<Variable> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Variable> data);

private:
	Metadata metadata;
	Pagination pagination;
	std::list <Variable>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _VariableList_H_ */
