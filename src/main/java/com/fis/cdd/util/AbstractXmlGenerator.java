package com.fis.cdd.util;

import java.io.File;
import java.io.IOException;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;

public abstract class AbstractXmlGenerator<T> {

	private ApplicationContext context;

	public void generate(String filePath, T obj) throws JAXBException,
			IOException {

		context = new ClassPathXmlApplicationContext();

		Resource resource = context.getResource("classpath:" + filePath);

		JAXBContext jaxbContext = JAXBContext.newInstance(obj.getClass());

		Marshaller marshaller = jaxbContext.createMarshaller();

		marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		ClassLoader classLoader = getClass().getClassLoader();
		File file = new File("classpath:" + filePath);

		if (!file.exists())
			file.createNewFile();

		marshaller.marshal(obj, file);
	}

}
