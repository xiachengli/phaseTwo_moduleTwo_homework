package com.xcl.service.imp;

import com.xcl.dao.ResumeDao;
import com.xcl.pojo.Resume;
import com.xcl.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ResumeServiceImp implements ResumeService {

    @Autowired
    ResumeDao resumeDao;

    @Override
    public List<Resume> findByJpql(Long id, String name) {
        return resumeDao.findByJpql(id, name);
    }

    @Override
    public List<Resume> findAll() {
        return resumeDao.findAll();
    }

    @Override
    public void save(Resume resume) {
        resumeDao.save(resume);
    }

    @Override
    public void deleteById(Long id) {
        resumeDao.deleteById(id);
    }

    @Override
    public Resume findById(Long id) {
        Optional<Resume> optional = resumeDao.findById(id);
        if (optional == null) {
            return null;
        }
        return optional.get();
    }

}
