/*
 * Keyword.h
 *
 * 
 */

#ifndef _Keyword_H_
#define _Keyword_H_


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

class Keyword : public Object {
public:
	/*! \brief Constructor.
	 */
	Keyword();
	Keyword(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Keyword();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Name of the keyword
	 */
	std::string getKeywordName();

	/*! \brief Set Name of the keyword
	 */
	void setKeywordName(std::string  keywordName);
	/*! \brief Get Key of the keyword (short code)
	 */
	std::string getKeywordKey();

	/*! \brief Set Key of the keyword (short code)
	 */
	void setKeywordKey(std::string  keywordKey);
	/*! \brief Get Internal keyword ID
	 */
	int getKeywordId();

	/*! \brief Set Internal keyword ID
	 */
	void setKeywordId(int  keywordId);
	/*! \brief Get Date when this keyword was added
	 */
	std::string getDateAdded();

	/*! \brief Set Date when this keyword was added
	 */
	void setDateAdded(std::string  dateAdded);

private:
	std::string keywordName;
	std::string keywordKey;
	int keywordId;
	std::string dateAdded;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Keyword_H_ */
