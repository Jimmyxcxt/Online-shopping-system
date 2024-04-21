package cn.itbaizhan.dao;
import java.util.list;
import cn.itbaizhan.po.Admin;

public interface AdminDao{
  public void save(Admin admin);
  public void delete(Admin admin);
  public Admin findAdminById(int id);
  public List<Admin> findAllAdmins();
  public void update(Admin admin);
  public Admin getUserByLoginNameAndPassword(String name, Stringpasword);
}
