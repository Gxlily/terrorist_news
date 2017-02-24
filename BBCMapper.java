package cn.edu.tju.bigdata.mapper;

import cn.edu.tju.bigdata.entity.BBCFormMap;
import cn.edu.tju.bigdata.mapper.base.BaseMapper;

import java.util.List;

/**
 * Created by Administrator on 2016/12/20.
 */
public interface BBCMapper extends BaseMapper {
    public List<BBCFormMap>selectAll(BBCFormMap map);
}
