package xu.sharry.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xu.sharry.ssm.po.Provider;
import xu.sharry.ssm.po.ProviderExample;

public interface ProviderMapper {
    int countByExample(ProviderExample example);

    int deleteByExample(ProviderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Provider record);

    int insertSelective(Provider record);

    List<Provider> selectByExampleWithBLOBs(ProviderExample example);

    List<Provider> selectByExample(ProviderExample example);

    Provider selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Provider record, @Param("example") ProviderExample example);

    int updateByExampleWithBLOBs(@Param("record") Provider record, @Param("example") ProviderExample example);

    int updateByExample(@Param("record") Provider record, @Param("example") ProviderExample example);

    int updateByPrimaryKeySelective(Provider record);

    int updateByPrimaryKeyWithBLOBs(Provider record);

    int updateByPrimaryKey(Provider record);
}