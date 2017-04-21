package pers.flights.util;

import java.util.ArrayList;
import java.util.List;

public class Pager {

	private int limit = 10;
	  private int offset = 0;
	  private long total = -1L;
	  private List<?> datas = new ArrayList<Object>();
	  private String param;
	  
	  public int getLimit()
	  {
	    return this.limit;
	  }
	  
	  public void setLimit(int limit)
	  {
	    this.limit = limit;
	  }
	  
	  public long getTotal()
	  {
	    return this.total;
	  }
	  
	  public void setTotal(long total)
	  {
	    this.total = total;
	  }
	  
	  public int getOffset()
	  {
	    return this.offset;
	  }
	  
	  public void setOffset(int offset)
	  {
	    this.offset = offset;
	  }
	  
	  public String getParam()
	  {
	    return this.param;
	  }
	  
	  public void setParam(String param)
	  {
	    this.param = param;
	  }
	  
	  public List<?> getDatas()
	  {
	    return this.datas;
	  }
	  
	  public void setDatas(List<?> datas)
	  {
	    this.datas = datas;
	  }
	
}
