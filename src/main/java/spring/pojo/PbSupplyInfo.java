package com.sample;


public class PbSupplyInfo {

  private String seqId;
  private String itemId;
  private String objectId;
  private long bidFreeLen;
  private long bidDelayLen;
  private java.sql.Timestamp bidStartTime;
  private java.sql.Timestamp bidEndTime;
  private double flowId;
  private double runId;
  private String createUserId;
  private String updateUserId;
  private java.sql.Timestamp createTime;
  private java.sql.Timestamp updateTime;
  private String isDel;


  public String getSeqId() {
    return seqId;
  }

  public void setSeqId(String seqId) {
    this.seqId = seqId;
  }


  public String getItemId() {
    return itemId;
  }

  public void setItemId(String itemId) {
    this.itemId = itemId;
  }


  public String getObjectId() {
    return objectId;
  }

  public void setObjectId(String objectId) {
    this.objectId = objectId;
  }


  public long getBidFreeLen() {
    return bidFreeLen;
  }

  public void setBidFreeLen(long bidFreeLen) {
    this.bidFreeLen = bidFreeLen;
  }


  public long getBidDelayLen() {
    return bidDelayLen;
  }

  public void setBidDelayLen(long bidDelayLen) {
    this.bidDelayLen = bidDelayLen;
  }


  public java.sql.Timestamp getBidStartTime() {
    return bidStartTime;
  }

  public void setBidStartTime(java.sql.Timestamp bidStartTime) {
    this.bidStartTime = bidStartTime;
  }


  public java.sql.Timestamp getBidEndTime() {
    return bidEndTime;
  }

  public void setBidEndTime(java.sql.Timestamp bidEndTime) {
    this.bidEndTime = bidEndTime;
  }


  public double getFlowId() {
    return flowId;
  }

  public void setFlowId(double flowId) {
    this.flowId = flowId;
  }


  public double getRunId() {
    return runId;
  }

  public void setRunId(double runId) {
    this.runId = runId;
  }


  public String getCreateUserId() {
    return createUserId;
  }

  public void setCreateUserId(String createUserId) {
    this.createUserId = createUserId;
  }


  public String getUpdateUserId() {
    return updateUserId;
  }

  public void setUpdateUserId(String updateUserId) {
    this.updateUserId = updateUserId;
  }


  public java.sql.Timestamp getCreateTime() {
    return createTime;
  }

  public void setCreateTime(java.sql.Timestamp createTime) {
    this.createTime = createTime;
  }


  public java.sql.Timestamp getUpdateTime() {
    return updateTime;
  }

  public void setUpdateTime(java.sql.Timestamp updateTime) {
    this.updateTime = updateTime;
  }


  public String getIsDel() {
    return isDel;
  }

  public void setIsDel(String isDel) {
    this.isDel = isDel;
  }

}
