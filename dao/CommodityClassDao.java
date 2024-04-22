package cn.itbaizhan.dao;
import java.util.List;
import cn.itbaizhan.po.CommodityClass;
public interface CommodityClassDao{
  public void save(CommodityClass commodityClass);
  public void delete(CommodityClass id);
  public CommodityClass findCommodityClassById(int id);
  public List<CommodityClass> findAllCommodityClasses();
  public void update(CommodityClass commodityClass);
  public CommodityClass findCommodityClassByName(String name);
}
