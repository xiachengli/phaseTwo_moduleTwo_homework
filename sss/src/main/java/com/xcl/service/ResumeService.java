package com.xcl.service;

import com.xcl.pojo.Resume;

import java.util.List;

public interface ResumeService {

    List<Resume> findByJpql(Long id, String name);

    List<Resume> findAll();

    void save(Resume resume);

    void deleteById(Long id);

    Resume findById(Long id);

}
