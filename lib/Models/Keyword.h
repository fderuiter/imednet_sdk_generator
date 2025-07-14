
/*
 * Keyword.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Keyword_H_
#define TINY_CPP_CLIENT_Keyword_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Keyword{
public:

    /*! \brief Constructor.
	 */
    Keyword();
    Keyword(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Keyword();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
    std::string keywordName{};
    std::string keywordKey{};
    int keywordId{};
    std::string dateAdded{};
};
}

#endif /* TINY_CPP_CLIENT_Keyword_H_ */
