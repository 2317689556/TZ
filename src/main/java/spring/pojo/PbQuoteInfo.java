package spring.pojo;


public class PbQuoteInfo {

  private String seqId;
  private String objectId;
  private double quotePrice;
  private String applyId;
  private java.sql.Timestamp quoteTime;
  private long isPriority;
  private String isDel;


  public String getSeqId() {
    return seqId;
  }

  public void setSeqId(String seqId) {
    this.seqId = seqId;
  }


  public String getObjectId() {
    return objectId;
  }

  public void setObjectId(String objectId) {
    this.objectId = objectId;
  }


  public double getQuotePrice() {
    return quotePrice;
  }

  public void setQuotePrice(double quotePrice) {
    this.quotePrice = quotePrice;
  }


  public String getApplyId() {
    return applyId;
  }

  public void setApplyId(String applyId) {
    this.applyId = applyId;
  }


  public java.sql.Timestamp getQuoteTime() {
    return quoteTime;
  }

  public void setQuoteTime(java.sql.Timestamp quoteTime) {
    this.quoteTime = quoteTime;
  }


  public long getIsPriority() {
    return isPriority;
  }

  public void setIsPriority(long isPriority) {
    this.isPriority = isPriority;
  }


  public String getIsDel() {
    return isDel;
  }

  public void setIsDel(String isDel) {
    this.isDel = isDel;
  }

}
