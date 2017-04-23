package pers.flights.util;

import java.util.ArrayList;
import java.util.List;

public class Pager {

	  private int limit = 10;   //每页显示记录条数
	  private int page = 1;		//当前页码
	  private long total = 0;	//总记录条数
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
	  
	  public int getPage()
	  {
	    return this.page;
	  }
	  
	  public void setPage(int page)
	  {
	    this.page = page;
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
	  
	  public int getPageSum() {
		  return (int) Math.ceil((double)total/limit);
	  }
	  
	  //分页查询起始位置
	  public int getOffset() {
		  return (page-1)*limit;
	  }
	
}
