package spring.dao;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import spring.pojo.Yhy;

import java.util.List;

@Repository
public interface YHYMapper {

    List<Yhy> findById(Integer seqId);

}
