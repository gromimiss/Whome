package xu.sharry.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xu.sharry.ssm.po.ServiceArea;
import xu.sharry.ssm.po.ServiceAreaExample;

public interface ServiceAreaMapper {
    int countByExample(ServiceAreaExample example);

    int deleteByExample(ServiceAreaExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ServiceArea record);

    int insertSelective(ServiceArea record);

    List<ServiceArea> selectByExampleWithBLOBs(ServiceAreaExample example);

    List<ServiceArea> selectByExample(ServiceAreaExample example);

    ServiceArea selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ServiceArea record, @Param("example") ServiceAreaExample example);

    int updateByExampleWithBLOBs(@Param("record") ServiceArea record, @Param("example") ServiceAreaExample example);

    int updateByExample(@Param("record") ServiceArea record, @Param("example") ServiceAreaExample example);

    int updateByPrimaryKeySelective(ServiceArea record);

    int updateByPrimaryKeyWithBLOBs(ServiceArea record);

    int updateByPrimaryKey(ServiceArea record);
}