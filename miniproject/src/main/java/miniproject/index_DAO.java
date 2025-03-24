package miniproject;
 
 import java.util.List;
 
 import javax.annotation.Resource;
 
 import org.mybatis.spring.SqlSessionTemplate;
 import org.springframework.stereotype.Repository;
 
 @Repository("index_DAO")
 public class index_DAO {
 	
 	@Resource(name = "template")
 	public SqlSessionTemplate st;
 
 	public List<copyright_DTO> copyright_select() {
 		List<copyright_DTO> crList = this.st.selectList("copyright_select");
 		return crList;
 	}
 	
 	public List<mdchoice_DTO>mdchoice_select() {
 		List<mdchoice_DTO> mdList = this.st.selectList("mdchoice_select");
 		return mdList;
 	}
 	
 	public List<webinfo_DTO>webinfo_select() {
 		List<webinfo_DTO> wiList = this.st.selectList("webinfo_select");
 		return wiList;
 	}
 }