package com.fis.cdd.profile.jaxb;

import java.io.File;
import java.io.IOException;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

public abstract class Profile<T> {
	
	JAXBContext jaxbContext;
	public  void marshaling(String filePath, T obj) throws JAXBException{
		// TODO Auto-generated method stub
		 jaxbContext = JAXBContext.newInstance(obj.getClass());
		Marshaller jaxbMarshaller = jaxbContext.createMarshaller();
 
		jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		jaxbMarshaller.marshal(obj, System.out);
		jaxbMarshaller.marshal(obj, new File("src\\main\\resources\\"+filePath));

	}
	
	
	@SuppressWarnings("unchecked")
	public T parse(String filePath, Class<T> clazz) throws JAXBException, IOException {
		
		
		 jaxbContext = JAXBContext.newInstance(clazz.getClasses());
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		T emps = (T) jaxbUnmarshaller.unmarshal( new File("src\\main\\resources\\"+filePath) );
		
		return emps;
		
	}

}
