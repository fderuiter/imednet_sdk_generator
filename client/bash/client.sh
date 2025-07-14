#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Generator version: 7.14.0
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for Mednet EDC API.
#
# LICENSE:
# 
#
# CONTACT:
# 
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["listUsers:::studyKey"]=1
operation_parameters_minimum_occurrences["listUsers:::page"]=0
operation_parameters_minimum_occurrences["listUsers:::size"]=0
operation_parameters_minimum_occurrences["listUsers:::sort"]=0
operation_parameters_minimum_occurrences["listUsers:::includeInactive"]=0
operation_parameters_minimum_occurrences["listCodings:::studyKey"]=1
operation_parameters_minimum_occurrences["listCodings:::page"]=0
operation_parameters_minimum_occurrences["listCodings:::size"]=0
operation_parameters_minimum_occurrences["listCodings:::sort"]=0
operation_parameters_minimum_occurrences["listCodings:::filter"]=0
operation_parameters_minimum_occurrences["listForms:::studyKey"]=1
operation_parameters_minimum_occurrences["listForms:::page"]=0
operation_parameters_minimum_occurrences["listForms:::size"]=0
operation_parameters_minimum_occurrences["listForms:::sort"]=0
operation_parameters_minimum_occurrences["listForms:::filter"]=0
operation_parameters_minimum_occurrences["listIntervals:::studyKey"]=1
operation_parameters_minimum_occurrences["listIntervals:::page"]=0
operation_parameters_minimum_occurrences["listIntervals:::size"]=0
operation_parameters_minimum_occurrences["listIntervals:::sort"]=0
operation_parameters_minimum_occurrences["listIntervals:::filter"]=0
operation_parameters_minimum_occurrences["getJobStatus:::studyKey"]=1
operation_parameters_minimum_occurrences["getJobStatus:::batchId"]=1
operation_parameters_minimum_occurrences["listQueries:::studyKey"]=1
operation_parameters_minimum_occurrences["listQueries:::page"]=0
operation_parameters_minimum_occurrences["listQueries:::size"]=0
operation_parameters_minimum_occurrences["listQueries:::sort"]=0
operation_parameters_minimum_occurrences["listQueries:::filter"]=0
operation_parameters_minimum_occurrences["listRecordRevisions:::studyKey"]=1
operation_parameters_minimum_occurrences["listRecordRevisions:::page"]=0
operation_parameters_minimum_occurrences["listRecordRevisions:::size"]=0
operation_parameters_minimum_occurrences["listRecordRevisions:::sort"]=0
operation_parameters_minimum_occurrences["listRecordRevisions:::filter"]=0
operation_parameters_minimum_occurrences["createRecords:::studyKey"]=1
operation_parameters_minimum_occurrences["createRecords:::ComponentsSchemasRecordCreateRequestItem"]=1
operation_parameters_minimum_occurrences["listRecords:::studyKey"]=1
operation_parameters_minimum_occurrences["listRecords:::page"]=0
operation_parameters_minimum_occurrences["listRecords:::size"]=0
operation_parameters_minimum_occurrences["listRecords:::sort"]=0
operation_parameters_minimum_occurrences["listRecords:::filter"]=0
operation_parameters_minimum_occurrences["listRecords:::recordDataFilter"]=0
operation_parameters_minimum_occurrences["listSites:::studyKey"]=1
operation_parameters_minimum_occurrences["listSites:::page"]=0
operation_parameters_minimum_occurrences["listSites:::size"]=0
operation_parameters_minimum_occurrences["listSites:::sort"]=0
operation_parameters_minimum_occurrences["listSites:::filter"]=0
operation_parameters_minimum_occurrences["listStudies:::page"]=0
operation_parameters_minimum_occurrences["listStudies:::size"]=0
operation_parameters_minimum_occurrences["listStudies:::sort"]=0
operation_parameters_minimum_occurrences["listStudies:::filter"]=0
operation_parameters_minimum_occurrences["listSubjects:::studyKey"]=1
operation_parameters_minimum_occurrences["listSubjects:::page"]=0
operation_parameters_minimum_occurrences["listSubjects:::size"]=0
operation_parameters_minimum_occurrences["listSubjects:::sort"]=0
operation_parameters_minimum_occurrences["listSubjects:::filter"]=0
operation_parameters_minimum_occurrences["listVariables:::studyKey"]=1
operation_parameters_minimum_occurrences["listVariables:::page"]=0
operation_parameters_minimum_occurrences["listVariables:::size"]=0
operation_parameters_minimum_occurrences["listVariables:::sort"]=0
operation_parameters_minimum_occurrences["listVariables:::filter"]=0
operation_parameters_minimum_occurrences["listVisits:::studyKey"]=1
operation_parameters_minimum_occurrences["listVisits:::page"]=0
operation_parameters_minimum_occurrences["listVisits:::size"]=0
operation_parameters_minimum_occurrences["listVisits:::sort"]=0
operation_parameters_minimum_occurrences["listVisits:::filter"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["listUsers:::studyKey"]=0
operation_parameters_maximum_occurrences["listUsers:::page"]=0
operation_parameters_maximum_occurrences["listUsers:::size"]=0
operation_parameters_maximum_occurrences["listUsers:::sort"]=0
operation_parameters_maximum_occurrences["listUsers:::includeInactive"]=0
operation_parameters_maximum_occurrences["listCodings:::studyKey"]=0
operation_parameters_maximum_occurrences["listCodings:::page"]=0
operation_parameters_maximum_occurrences["listCodings:::size"]=0
operation_parameters_maximum_occurrences["listCodings:::sort"]=0
operation_parameters_maximum_occurrences["listCodings:::filter"]=0
operation_parameters_maximum_occurrences["listForms:::studyKey"]=0
operation_parameters_maximum_occurrences["listForms:::page"]=0
operation_parameters_maximum_occurrences["listForms:::size"]=0
operation_parameters_maximum_occurrences["listForms:::sort"]=0
operation_parameters_maximum_occurrences["listForms:::filter"]=0
operation_parameters_maximum_occurrences["listIntervals:::studyKey"]=0
operation_parameters_maximum_occurrences["listIntervals:::page"]=0
operation_parameters_maximum_occurrences["listIntervals:::size"]=0
operation_parameters_maximum_occurrences["listIntervals:::sort"]=0
operation_parameters_maximum_occurrences["listIntervals:::filter"]=0
operation_parameters_maximum_occurrences["getJobStatus:::studyKey"]=0
operation_parameters_maximum_occurrences["getJobStatus:::batchId"]=0
operation_parameters_maximum_occurrences["listQueries:::studyKey"]=0
operation_parameters_maximum_occurrences["listQueries:::page"]=0
operation_parameters_maximum_occurrences["listQueries:::size"]=0
operation_parameters_maximum_occurrences["listQueries:::sort"]=0
operation_parameters_maximum_occurrences["listQueries:::filter"]=0
operation_parameters_maximum_occurrences["listRecordRevisions:::studyKey"]=0
operation_parameters_maximum_occurrences["listRecordRevisions:::page"]=0
operation_parameters_maximum_occurrences["listRecordRevisions:::size"]=0
operation_parameters_maximum_occurrences["listRecordRevisions:::sort"]=0
operation_parameters_maximum_occurrences["listRecordRevisions:::filter"]=0
operation_parameters_maximum_occurrences["createRecords:::studyKey"]=0
operation_parameters_maximum_occurrences["createRecords:::ComponentsSchemasRecordCreateRequestItem"]=0
operation_parameters_maximum_occurrences["listRecords:::studyKey"]=0
operation_parameters_maximum_occurrences["listRecords:::page"]=0
operation_parameters_maximum_occurrences["listRecords:::size"]=0
operation_parameters_maximum_occurrences["listRecords:::sort"]=0
operation_parameters_maximum_occurrences["listRecords:::filter"]=0
operation_parameters_maximum_occurrences["listRecords:::recordDataFilter"]=0
operation_parameters_maximum_occurrences["listSites:::studyKey"]=0
operation_parameters_maximum_occurrences["listSites:::page"]=0
operation_parameters_maximum_occurrences["listSites:::size"]=0
operation_parameters_maximum_occurrences["listSites:::sort"]=0
operation_parameters_maximum_occurrences["listSites:::filter"]=0
operation_parameters_maximum_occurrences["listStudies:::page"]=0
operation_parameters_maximum_occurrences["listStudies:::size"]=0
operation_parameters_maximum_occurrences["listStudies:::sort"]=0
operation_parameters_maximum_occurrences["listStudies:::filter"]=0
operation_parameters_maximum_occurrences["listSubjects:::studyKey"]=0
operation_parameters_maximum_occurrences["listSubjects:::page"]=0
operation_parameters_maximum_occurrences["listSubjects:::size"]=0
operation_parameters_maximum_occurrences["listSubjects:::sort"]=0
operation_parameters_maximum_occurrences["listSubjects:::filter"]=0
operation_parameters_maximum_occurrences["listVariables:::studyKey"]=0
operation_parameters_maximum_occurrences["listVariables:::page"]=0
operation_parameters_maximum_occurrences["listVariables:::size"]=0
operation_parameters_maximum_occurrences["listVariables:::sort"]=0
operation_parameters_maximum_occurrences["listVariables:::filter"]=0
operation_parameters_maximum_occurrences["listVisits:::studyKey"]=0
operation_parameters_maximum_occurrences["listVisits:::page"]=0
operation_parameters_maximum_occurrences["listVisits:::size"]=0
operation_parameters_maximum_occurrences["listVisits:::sort"]=0
operation_parameters_maximum_occurrences["listVisits:::filter"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["listUsers:::studyKey"]=""
operation_parameters_collection_type["listUsers:::page"]=""
operation_parameters_collection_type["listUsers:::size"]=""
operation_parameters_collection_type["listUsers:::sort"]=""
operation_parameters_collection_type["listUsers:::includeInactive"]=""
operation_parameters_collection_type["listCodings:::studyKey"]=""
operation_parameters_collection_type["listCodings:::page"]=""
operation_parameters_collection_type["listCodings:::size"]=""
operation_parameters_collection_type["listCodings:::sort"]=""
operation_parameters_collection_type["listCodings:::filter"]=""
operation_parameters_collection_type["listForms:::studyKey"]=""
operation_parameters_collection_type["listForms:::page"]=""
operation_parameters_collection_type["listForms:::size"]=""
operation_parameters_collection_type["listForms:::sort"]=""
operation_parameters_collection_type["listForms:::filter"]=""
operation_parameters_collection_type["listIntervals:::studyKey"]=""
operation_parameters_collection_type["listIntervals:::page"]=""
operation_parameters_collection_type["listIntervals:::size"]=""
operation_parameters_collection_type["listIntervals:::sort"]=""
operation_parameters_collection_type["listIntervals:::filter"]=""
operation_parameters_collection_type["getJobStatus:::studyKey"]=""
operation_parameters_collection_type["getJobStatus:::batchId"]=""
operation_parameters_collection_type["listQueries:::studyKey"]=""
operation_parameters_collection_type["listQueries:::page"]=""
operation_parameters_collection_type["listQueries:::size"]=""
operation_parameters_collection_type["listQueries:::sort"]=""
operation_parameters_collection_type["listQueries:::filter"]=""
operation_parameters_collection_type["listRecordRevisions:::studyKey"]=""
operation_parameters_collection_type["listRecordRevisions:::page"]=""
operation_parameters_collection_type["listRecordRevisions:::size"]=""
operation_parameters_collection_type["listRecordRevisions:::sort"]=""
operation_parameters_collection_type["listRecordRevisions:::filter"]=""
operation_parameters_collection_type["createRecords:::studyKey"]=""
operation_parameters_collection_type["createRecords:::ComponentsSchemasRecordCreateRequestItem"]=
operation_parameters_collection_type["listRecords:::studyKey"]=""
operation_parameters_collection_type["listRecords:::page"]=""
operation_parameters_collection_type["listRecords:::size"]=""
operation_parameters_collection_type["listRecords:::sort"]=""
operation_parameters_collection_type["listRecords:::filter"]=""
operation_parameters_collection_type["listRecords:::recordDataFilter"]=""
operation_parameters_collection_type["listSites:::studyKey"]=""
operation_parameters_collection_type["listSites:::page"]=""
operation_parameters_collection_type["listSites:::size"]=""
operation_parameters_collection_type["listSites:::sort"]=""
operation_parameters_collection_type["listSites:::filter"]=""
operation_parameters_collection_type["listStudies:::page"]=""
operation_parameters_collection_type["listStudies:::size"]=""
operation_parameters_collection_type["listStudies:::sort"]=""
operation_parameters_collection_type["listStudies:::filter"]=""
operation_parameters_collection_type["listSubjects:::studyKey"]=""
operation_parameters_collection_type["listSubjects:::page"]=""
operation_parameters_collection_type["listSubjects:::size"]=""
operation_parameters_collection_type["listSubjects:::sort"]=""
operation_parameters_collection_type["listSubjects:::filter"]=""
operation_parameters_collection_type["listVariables:::studyKey"]=""
operation_parameters_collection_type["listVariables:::page"]=""
operation_parameters_collection_type["listVariables:::size"]=""
operation_parameters_collection_type["listVariables:::sort"]=""
operation_parameters_collection_type["listVariables:::filter"]=""
operation_parameters_collection_type["listVisits:::studyKey"]=""
operation_parameters_collection_type["listVisits:::page"]=""
operation_parameters_collection_type["listVisits:::size"]=""
operation_parameters_collection_type["listVisits:::sort"]=""
operation_parameters_collection_type["listVisits:::filter"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""

##
# The user API key
apikey_auth_credential=""
##
# The user API key
apikey_auth_credential=""

##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""
    local api_key_header=""
    local api_key_header_in_cli=""
    api_key_header="x-api-key"
    local api_key_header=""
    local api_key_header_in_cli=""
    api_key_header="x-imn-security-key"

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    #
    # If the api_key was not provided in the header, try one from the
    # environment variable
    #
    if [[ -z $api_key_header_in_cli && -n $apikey_auth_credential ]]; then
        headers_curl+="-H \"${api_key_header}: ${apikey_auth_credential}\""
    fi
    #
    # If the api_key was not provided in the header, try one from the
    # environment variable
    #
    if [[ -z $api_key_header_in_cli && -n $apikey_auth_credential ]]; then
        headers_curl+="-H \"${api_key_header}: ${apikey_auth_credential}\""
    fi
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    if [[ $RAW_BODY == "1" ]]; then
        echo "-d '${body_parameters["RAW_BODY"]}'"
    else
        local body_json="-d '{"
        local count=0
        for key in "${!body_parameters[@]}"; do
            if [[ $((count++)) -gt 0 ]]; then
                body_json+=", "
            fi
            body_json+="\"${key}\": ${body_parameters[${key}]}"
        done
        body_json+="}'"

        if [[ "${#body_parameters[@]}" -eq 0 ]]; then
            echo ""
        else
            echo "${body_json}"
        fi
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}Mednet EDC API command line client (API version 1.3.6)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}x-api-key:<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}x-imn-security-key:<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[administration]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listUsers${OFF};List users and their roles in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[codings]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listCodings${OFF};List coding activities in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[forms]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listForms${OFF};List forms in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[intervals]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listIntervals${OFF};List intervals (visit definitions) in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[jobs]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getJobStatus${OFF};Retrieve job status by batch ID (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[queries]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listQueries${OFF};List data queries in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[recordRevisions]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listRecordRevisions${OFF};List record revisions (audit trail entries) in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[records]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createRecords${OFF};Add new record or update subject/record data (AUTH) (AUTH)
  ${CYAN}listRecords${OFF};List records (eCRF instances) in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sites]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listSites${OFF};List sites for a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[studies]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listStudies${OFF};List studies accessible by API key (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[subjects]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listSubjects${OFF};List subjects in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[variables]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listVariables${OFF};List variables (fields) in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[visits]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}listVisits${OFF};List visits (subject visit instances) in a study (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://edc.prod.imednetapi.com')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}Mednet EDC API command line client (API version 1.3.6)${OFF}"
    echo ""
    echo -e "License: "
    echo -e "Contact: "
    echo ""
read -r -d '' appdescription <<EOF

The Mednet EDC (Electronic Data Capture) REST API provides a single-point of access for reading data stored across iMednet data services.
This specification documents all available endpoints in the latest version of the API.
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}Mednet EDC API command line client (API version 1.3.6)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for listUsers operation
#
##############################################################################
print_listUsers_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listUsers - List users and their roles in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}includeInactive${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - For user listing, whether to include inactive users${YELLOW} Specify as: includeInactive=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of users${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listCodings operation
#
##############################################################################
print_listCodings_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listCodings - List coding activities in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of coding entries${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listForms operation
#
##############################################################################
print_listForms_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listForms - List forms in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of forms${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listIntervals operation
#
##############################################################################
print_listIntervals_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listIntervals - List intervals (visit definitions) in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of intervals${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getJobStatus operation
#
##############################################################################
print_getJobStatus_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getJobStatus - Retrieve job status by batch ID${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}batchId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Batch ID of the job to retrieve ${YELLOW}Specify as: batchId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with job status information${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listQueries operation
#
##############################################################################
print_listQueries_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listQueries - List data queries in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of queries${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listRecordRevisions operation
#
##############################################################################
print_listRecordRevisions_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listRecordRevisions - List record revisions (audit trail entries) in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of record revisions${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createRecords operation
#
##############################################################################
print_createRecords_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createRecords - Add new record or update subject/record data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update)." | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=202
    echo -e "${result_color_table[${code:0:1}]}  202;Accepted request for record creation. Returns a job identifier to check status.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;Too many requests (rate limit exceeded)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listRecords operation
#
##############################################################################
print_listRecords_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listRecords - List records (eCRF instances) in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}recordDataFilter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with ';' (AND) or ',' (OR).${YELLOW} Specify as: recordDataFilter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of records${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listSites operation
#
##############################################################################
print_listSites_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listSites - List sites for a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of sites${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listStudies operation
#
##############################################################################
print_listStudies_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listStudies - List studies accessible by API key${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of studies${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listSubjects operation
#
##############################################################################
print_listSubjects_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listSubjects - List subjects in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of subjects${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listVariables operation
#
##############################################################################
print_listVariables_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listVariables - List variables (fields) in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of variables${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for listVisits operation
#
##############################################################################
print_listVisits_help() {
    echo ""
    echo -e "${BOLD}${WHITE}listVisits - List visits (subject visit instances) in a study${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}studyKey${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Study key identifying the study context for the request ${YELLOW}Specify as: studyKey=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page index to retrieve (0-based)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 25)${OFF} - Number of items to return per page (max 500)${YELLOW} Specify as: size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated.${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional filter criteria to apply, in the format 'attribute==value' with support for >, >=, <, <=, !=. Multiple criteria can be combined with ';' (AND) or ',' (OR).${YELLOW} Specify as: filter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful response with list of visits${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad request (malformed or invalid input)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed or was not provided${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Authenticated but not allowed to access the resource${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested resource was not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error (unexpected condition encountered)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call listUsers operation
#
##############################################################################
call_listUsers() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort includeInactive    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/users" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listCodings operation
#
##############################################################################
call_listCodings() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/codings" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listForms operation
#
##############################################################################
call_listForms() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/forms" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listIntervals operation
#
##############################################################################
call_listIntervals() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/intervals" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getJobStatus operation
#
##############################################################################
call_getJobStatus() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey batchId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/jobs/{batchId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listQueries operation
#
##############################################################################
call_listQueries() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/queries" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listRecordRevisions operation
#
##############################################################################
call_listRecordRevisions() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/recordRevisions" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call createRecords operation
#
##############################################################################
call_createRecords() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/records" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call listRecords operation
#
##############################################################################
call_listRecords() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter recordDataFilter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/records" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listSites operation
#
##############################################################################
call_listSites() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/sites" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listStudies operation
#
##############################################################################
call_listStudies() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listSubjects operation
#
##############################################################################
call_listSubjects() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/subjects" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listVariables operation
#
##############################################################################
call_listVariables() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/variables" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call listVisits operation
#
##############################################################################
call_listVisits() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(studyKey)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page size sort filter    )
    local path

    if ! path=$(build_request_path "/api/v1/edc/studies/{studyKey}/visits" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    listUsers)
    operation="listUsers"
    ;;
    listCodings)
    operation="listCodings"
    ;;
    listForms)
    operation="listForms"
    ;;
    listIntervals)
    operation="listIntervals"
    ;;
    getJobStatus)
    operation="getJobStatus"
    ;;
    listQueries)
    operation="listQueries"
    ;;
    listRecordRevisions)
    operation="listRecordRevisions"
    ;;
    createRecords)
    operation="createRecords"
    ;;
    listRecords)
    operation="listRecords"
    ;;
    listSites)
    operation="listSites"
    ;;
    listStudies)
    operation="listStudies"
    ;;
    listSubjects)
    operation="listSubjects"
    ;;
    listVariables)
    operation="listVariables"
    ;;
    listVisits)
    operation="listVisits"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    --body=*)
    # Parse value of body as argument and convert it into only
    # the raw body content
    if [[ "$operation" ]]; then
        IFS='--body=' read -r body_value <<< "$key"
        body_value=${body_value##--body=}
        body_parameters["RAW_BODY"]="${body_value}"
        RAW_BODY=1
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        #
        # If the header key is the same as the api_key expected by API in the
        # header, override the ${apikey_auth_credential} variable
        #
        if [[ $header_name == "x-api-key" ]]; then
            apikey_auth_credential=$header_value
        fi
        #
        # If the header key is the same as the api_key expected by API in the
        # header, override the ${apikey_auth_credential} variable
        #
        if [[ $header_name == "x-imn-security-key" ]]; then
            apikey_auth_credential=$header_value
        fi
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    listUsers)
    call_listUsers
    ;;
    listCodings)
    call_listCodings
    ;;
    listForms)
    call_listForms
    ;;
    listIntervals)
    call_listIntervals
    ;;
    getJobStatus)
    call_getJobStatus
    ;;
    listQueries)
    call_listQueries
    ;;
    listRecordRevisions)
    call_listRecordRevisions
    ;;
    createRecords)
    call_createRecords
    ;;
    listRecords)
    call_listRecords
    ;;
    listSites)
    call_listSites
    ;;
    listStudies)
    call_listStudies
    ;;
    listSubjects)
    call_listSubjects
    ;;
    listVariables)
    call_listVariables
    ;;
    listVisits)
    call_listVisits
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
