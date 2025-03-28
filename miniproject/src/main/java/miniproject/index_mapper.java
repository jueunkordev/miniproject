package miniproject;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface index_mapper {
	List<copyright_DTO> copyright_select();

	List<mdchoice_DTO> mdchoice_select();

	List<webinfo_DTO> webinfo_select();
	
    List<member_DTO> member_select();
    
    public int member_insert(member_DTO dto);
}