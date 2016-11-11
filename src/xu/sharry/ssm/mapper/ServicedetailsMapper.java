package xu.sharry.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xu.sharry.ssm.po.Servicedetails;
import xu.sharry.ssm.po.ServicedetailsExample;

public interface ServicedetailsMapper {
    int countByExample(ServicedetailsExample example);

    int deleteByExample(ServicedetailsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Servicedetails record);

    int insertSelective(Servicedetails record);

    List<Servicedetails> selectByExample(ServicedetailsExample example);

    Servicedetails selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Servicedetails record, @Param("example") ServicedetailsExample example);

    int updateByExample(@Param("record") Servicedetails record, @Param("example") ServicedetailsExample example);

    int updateByPrimaryKeySelective(Servicedetails record);

    int updateByPrimaryKey(Servicedetails record);
}