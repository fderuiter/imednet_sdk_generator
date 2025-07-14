package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ComponentsSchemasIntervalFormsItem;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Interval  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Unique system identifier for the interval (visit definition)")
 /**
   * Unique system identifier for the interval (visit definition)
  **/
  private Integer intervalId;

  @ApiModelProperty(value = "Name of the interval (visit) as defined in the study")
 /**
   * Name of the interval (visit) as defined in the study
  **/
  private String intervalName;

  @ApiModelProperty(value = "Description of the interval (visit)")
 /**
   * Description of the interval (visit)
  **/
  private String intervalDescription;

  @ApiModelProperty(value = "Sequence number of the interval in the schedule")
 /**
   * Sequence number of the interval in the schedule
  **/
  private Integer intervalSequence;

  @ApiModelProperty(value = "Identifier for the interval group (if intervals are grouped)")
 /**
   * Identifier for the interval group (if intervals are grouped)
  **/
  private Integer intervalGroupId;

  @ApiModelProperty(value = "Name of the interval group")
 /**
   * Name of the interval group
  **/
  private String intervalGroupName;

  @ApiModelProperty(value = "Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)")
 /**
   * Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
  **/
  private String timeline;

  @ApiModelProperty(value = "Baseline interval used for calculating this interval’s dates")
 /**
   * Baseline interval used for calculating this interval’s dates
  **/
  private String definedUsingInterval;

  @ApiModelProperty(value = "Baseline form (name) from which the calculation date is taken")
 /**
   * Baseline form (name) from which the calculation date is taken
  **/
  private String windowCalculationForm;

  @ApiModelProperty(value = "Baseline field (variable name) from which the calculation date is taken")
 /**
   * Baseline field (variable name) from which the calculation date is taken
  **/
  private String windowCalculationDate;

  @ApiModelProperty(value = "Form used to capture the actual date for this interval")
 /**
   * Form used to capture the actual date for this interval
  **/
  private String actualDateForm;

  @ApiModelProperty(value = "Field (variable name) used to capture the actual date for this interval")
 /**
   * Field (variable name) used to capture the actual date for this interval
  **/
  private String actualDate;

  @ApiModelProperty(value = "Number of days from the calculation date when the interval is due")
 /**
   * Number of days from the calculation date when the interval is due
  **/
  private Integer dueDateWillBeIn;

  @ApiModelProperty(value = "Number of days before the due date that are allowed (negative window)")
 /**
   * Number of days before the due date that are allowed (negative window)
  **/
  private Integer negativeSlack;

  @ApiModelProperty(value = "Number of days after the due date that are allowed (positive window)")
 /**
   * Number of days after the due date that are allowed (positive window)
  **/
  private Integer positiveSlack;

  @ApiModelProperty(value = "Number of days of grace period for ePRO completion after due date")
 /**
   * Number of days of grace period for ePRO completion after due date
  **/
  private Integer eproGracePeriod;

  @ApiModelProperty(value = "List of forms that are scheduled in this interval")
 /**
   * List of forms that are scheduled in this interval
  **/
  private List<ComponentsSchemasIntervalFormsItem> forms = new ArrayList<>();

  @ApiModelProperty(value = "Whether the interval is soft-deleted (disabled)")
 /**
   * Whether the interval is soft-deleted (disabled)
  **/
  private Boolean disabled;

  @ApiModelProperty(value = "Date when this interval was created")
 /**
   * Date when this interval was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Date when this interval was last modified")
 /**
   * Date when this interval was last modified
  **/
  private String dateModified;
 /**
   * Unique study key
   * @return studyKey
  **/
  @JsonProperty("studyKey")
  public String getStudyKey() {
    return studyKey;
  }

  public void setStudyKey(String studyKey) {
    this.studyKey = studyKey;
  }

  public Interval studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Unique system identifier for the interval (visit definition)
   * @return intervalId
  **/
  @JsonProperty("intervalId")
  public Integer getIntervalId() {
    return intervalId;
  }

  public void setIntervalId(Integer intervalId) {
    this.intervalId = intervalId;
  }

  public Interval intervalId(Integer intervalId) {
    this.intervalId = intervalId;
    return this;
  }

 /**
   * Name of the interval (visit) as defined in the study
   * @return intervalName
  **/
  @JsonProperty("intervalName")
  public String getIntervalName() {
    return intervalName;
  }

  public void setIntervalName(String intervalName) {
    this.intervalName = intervalName;
  }

  public Interval intervalName(String intervalName) {
    this.intervalName = intervalName;
    return this;
  }

 /**
   * Description of the interval (visit)
   * @return intervalDescription
  **/
  @JsonProperty("intervalDescription")
  public String getIntervalDescription() {
    return intervalDescription;
  }

  public void setIntervalDescription(String intervalDescription) {
    this.intervalDescription = intervalDescription;
  }

  public Interval intervalDescription(String intervalDescription) {
    this.intervalDescription = intervalDescription;
    return this;
  }

 /**
   * Sequence number of the interval in the schedule
   * @return intervalSequence
  **/
  @JsonProperty("intervalSequence")
  public Integer getIntervalSequence() {
    return intervalSequence;
  }

  public void setIntervalSequence(Integer intervalSequence) {
    this.intervalSequence = intervalSequence;
  }

  public Interval intervalSequence(Integer intervalSequence) {
    this.intervalSequence = intervalSequence;
    return this;
  }

 /**
   * Identifier for the interval group (if intervals are grouped)
   * @return intervalGroupId
  **/
  @JsonProperty("intervalGroupId")
  public Integer getIntervalGroupId() {
    return intervalGroupId;
  }

  public void setIntervalGroupId(Integer intervalGroupId) {
    this.intervalGroupId = intervalGroupId;
  }

  public Interval intervalGroupId(Integer intervalGroupId) {
    this.intervalGroupId = intervalGroupId;
    return this;
  }

 /**
   * Name of the interval group
   * @return intervalGroupName
  **/
  @JsonProperty("intervalGroupName")
  public String getIntervalGroupName() {
    return intervalGroupName;
  }

  public void setIntervalGroupName(String intervalGroupName) {
    this.intervalGroupName = intervalGroupName;
  }

  public Interval intervalGroupName(String intervalGroupName) {
    this.intervalGroupName = intervalGroupName;
    return this;
  }

 /**
   * Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
   * @return timeline
  **/
  @JsonProperty("timeline")
  public String getTimeline() {
    return timeline;
  }

  public void setTimeline(String timeline) {
    this.timeline = timeline;
  }

  public Interval timeline(String timeline) {
    this.timeline = timeline;
    return this;
  }

 /**
   * Baseline interval used for calculating this interval’s dates
   * @return definedUsingInterval
  **/
  @JsonProperty("definedUsingInterval")
  public String getDefinedUsingInterval() {
    return definedUsingInterval;
  }

  public void setDefinedUsingInterval(String definedUsingInterval) {
    this.definedUsingInterval = definedUsingInterval;
  }

  public Interval definedUsingInterval(String definedUsingInterval) {
    this.definedUsingInterval = definedUsingInterval;
    return this;
  }

 /**
   * Baseline form (name) from which the calculation date is taken
   * @return windowCalculationForm
  **/
  @JsonProperty("windowCalculationForm")
  public String getWindowCalculationForm() {
    return windowCalculationForm;
  }

  public void setWindowCalculationForm(String windowCalculationForm) {
    this.windowCalculationForm = windowCalculationForm;
  }

  public Interval windowCalculationForm(String windowCalculationForm) {
    this.windowCalculationForm = windowCalculationForm;
    return this;
  }

 /**
   * Baseline field (variable name) from which the calculation date is taken
   * @return windowCalculationDate
  **/
  @JsonProperty("windowCalculationDate")
  public String getWindowCalculationDate() {
    return windowCalculationDate;
  }

  public void setWindowCalculationDate(String windowCalculationDate) {
    this.windowCalculationDate = windowCalculationDate;
  }

  public Interval windowCalculationDate(String windowCalculationDate) {
    this.windowCalculationDate = windowCalculationDate;
    return this;
  }

 /**
   * Form used to capture the actual date for this interval
   * @return actualDateForm
  **/
  @JsonProperty("actualDateForm")
  public String getActualDateForm() {
    return actualDateForm;
  }

  public void setActualDateForm(String actualDateForm) {
    this.actualDateForm = actualDateForm;
  }

  public Interval actualDateForm(String actualDateForm) {
    this.actualDateForm = actualDateForm;
    return this;
  }

 /**
   * Field (variable name) used to capture the actual date for this interval
   * @return actualDate
  **/
  @JsonProperty("actualDate")
  public String getActualDate() {
    return actualDate;
  }

  public void setActualDate(String actualDate) {
    this.actualDate = actualDate;
  }

  public Interval actualDate(String actualDate) {
    this.actualDate = actualDate;
    return this;
  }

 /**
   * Number of days from the calculation date when the interval is due
   * @return dueDateWillBeIn
  **/
  @JsonProperty("dueDateWillBeIn")
  public Integer getDueDateWillBeIn() {
    return dueDateWillBeIn;
  }

  public void setDueDateWillBeIn(Integer dueDateWillBeIn) {
    this.dueDateWillBeIn = dueDateWillBeIn;
  }

  public Interval dueDateWillBeIn(Integer dueDateWillBeIn) {
    this.dueDateWillBeIn = dueDateWillBeIn;
    return this;
  }

 /**
   * Number of days before the due date that are allowed (negative window)
   * @return negativeSlack
  **/
  @JsonProperty("negativeSlack")
  public Integer getNegativeSlack() {
    return negativeSlack;
  }

  public void setNegativeSlack(Integer negativeSlack) {
    this.negativeSlack = negativeSlack;
  }

  public Interval negativeSlack(Integer negativeSlack) {
    this.negativeSlack = negativeSlack;
    return this;
  }

 /**
   * Number of days after the due date that are allowed (positive window)
   * @return positiveSlack
  **/
  @JsonProperty("positiveSlack")
  public Integer getPositiveSlack() {
    return positiveSlack;
  }

  public void setPositiveSlack(Integer positiveSlack) {
    this.positiveSlack = positiveSlack;
  }

  public Interval positiveSlack(Integer positiveSlack) {
    this.positiveSlack = positiveSlack;
    return this;
  }

 /**
   * Number of days of grace period for ePRO completion after due date
   * @return eproGracePeriod
  **/
  @JsonProperty("eproGracePeriod")
  public Integer getEproGracePeriod() {
    return eproGracePeriod;
  }

  public void setEproGracePeriod(Integer eproGracePeriod) {
    this.eproGracePeriod = eproGracePeriod;
  }

  public Interval eproGracePeriod(Integer eproGracePeriod) {
    this.eproGracePeriod = eproGracePeriod;
    return this;
  }

 /**
   * List of forms that are scheduled in this interval
   * @return forms
  **/
  @JsonProperty("forms")
  public List<ComponentsSchemasIntervalFormsItem> getForms() {
    return forms;
  }

  public void setForms(List<ComponentsSchemasIntervalFormsItem> forms) {
    this.forms = forms;
  }

  public Interval forms(List<ComponentsSchemasIntervalFormsItem> forms) {
    this.forms = forms;
    return this;
  }

  public Interval addFormsItem(ComponentsSchemasIntervalFormsItem formsItem) {
    this.forms.add(formsItem);
    return this;
  }

 /**
   * Whether the interval is soft-deleted (disabled)
   * @return disabled
  **/
  @JsonProperty("disabled")
  public Boolean getDisabled() {
    return disabled;
  }

  public void setDisabled(Boolean disabled) {
    this.disabled = disabled;
  }

  public Interval disabled(Boolean disabled) {
    this.disabled = disabled;
    return this;
  }

 /**
   * Date when this interval was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Interval dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Date when this interval was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public String getDateModified() {
    return dateModified;
  }

  public void setDateModified(String dateModified) {
    this.dateModified = dateModified;
  }

  public Interval dateModified(String dateModified) {
    this.dateModified = dateModified;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Interval interval = (Interval) o;
    return Objects.equals(this.studyKey, interval.studyKey) &&
        Objects.equals(this.intervalId, interval.intervalId) &&
        Objects.equals(this.intervalName, interval.intervalName) &&
        Objects.equals(this.intervalDescription, interval.intervalDescription) &&
        Objects.equals(this.intervalSequence, interval.intervalSequence) &&
        Objects.equals(this.intervalGroupId, interval.intervalGroupId) &&
        Objects.equals(this.intervalGroupName, interval.intervalGroupName) &&
        Objects.equals(this.timeline, interval.timeline) &&
        Objects.equals(this.definedUsingInterval, interval.definedUsingInterval) &&
        Objects.equals(this.windowCalculationForm, interval.windowCalculationForm) &&
        Objects.equals(this.windowCalculationDate, interval.windowCalculationDate) &&
        Objects.equals(this.actualDateForm, interval.actualDateForm) &&
        Objects.equals(this.actualDate, interval.actualDate) &&
        Objects.equals(this.dueDateWillBeIn, interval.dueDateWillBeIn) &&
        Objects.equals(this.negativeSlack, interval.negativeSlack) &&
        Objects.equals(this.positiveSlack, interval.positiveSlack) &&
        Objects.equals(this.eproGracePeriod, interval.eproGracePeriod) &&
        Objects.equals(this.forms, interval.forms) &&
        Objects.equals(this.disabled, interval.disabled) &&
        Objects.equals(this.dateCreated, interval.dateCreated) &&
        Objects.equals(this.dateModified, interval.dateModified);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, intervalId, intervalName, intervalDescription, intervalSequence, intervalGroupId, intervalGroupName, timeline, definedUsingInterval, windowCalculationForm, windowCalculationDate, actualDateForm, actualDate, dueDateWillBeIn, negativeSlack, positiveSlack, eproGracePeriod, forms, disabled, dateCreated, dateModified);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Interval {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    intervalId: ").append(toIndentedString(intervalId)).append("\n");
    sb.append("    intervalName: ").append(toIndentedString(intervalName)).append("\n");
    sb.append("    intervalDescription: ").append(toIndentedString(intervalDescription)).append("\n");
    sb.append("    intervalSequence: ").append(toIndentedString(intervalSequence)).append("\n");
    sb.append("    intervalGroupId: ").append(toIndentedString(intervalGroupId)).append("\n");
    sb.append("    intervalGroupName: ").append(toIndentedString(intervalGroupName)).append("\n");
    sb.append("    timeline: ").append(toIndentedString(timeline)).append("\n");
    sb.append("    definedUsingInterval: ").append(toIndentedString(definedUsingInterval)).append("\n");
    sb.append("    windowCalculationForm: ").append(toIndentedString(windowCalculationForm)).append("\n");
    sb.append("    windowCalculationDate: ").append(toIndentedString(windowCalculationDate)).append("\n");
    sb.append("    actualDateForm: ").append(toIndentedString(actualDateForm)).append("\n");
    sb.append("    actualDate: ").append(toIndentedString(actualDate)).append("\n");
    sb.append("    dueDateWillBeIn: ").append(toIndentedString(dueDateWillBeIn)).append("\n");
    sb.append("    negativeSlack: ").append(toIndentedString(negativeSlack)).append("\n");
    sb.append("    positiveSlack: ").append(toIndentedString(positiveSlack)).append("\n");
    sb.append("    eproGracePeriod: ").append(toIndentedString(eproGracePeriod)).append("\n");
    sb.append("    forms: ").append(toIndentedString(forms)).append("\n");
    sb.append("    disabled: ").append(toIndentedString(disabled)).append("\n");
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
    sb.append("    dateModified: ").append(toIndentedString(dateModified)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

