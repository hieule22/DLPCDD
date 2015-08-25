package com.fis.cdd.util;

import java.io.File;
import java.io.IOException;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;


public abstract class AbstractXmlParser<T> {

	private T t;
	private ApplicationContext context;

	@SuppressWarnings("unchecked")
	public T parse(String filePath, Class<T> clazz) throws JAXBException, IOException {

		context = new ClassPathXmlApplicationContext();

		Resource resource = context.getResource("classpath:" + filePath);

		File file = resource.getFile();
		if (!file.exists()) {
			throw new JAXBException("Error: File does not exist!");
		}
		JAXBContext jaxbContext = JAXBContext.newInstance(clazz);

		Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
		t = (T) unmarshaller.unmarshal(file);

		return t;
	}
}
